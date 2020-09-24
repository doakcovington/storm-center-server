class Api::V1::AdminsController < ApplicationController

  skip_before_action :authroized, only: [:create] #skips authorized action to allow admin creation

  def create
    @admin = Admin.create(admin_params)
    if @admin.valid?
      @token = encode_token(admin_id: @admin.id) #payload for encode_token method in application controller
      render json: { admin: AdminSerializer.new(@admin), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create admin' }, status: :not_acceptable
    end
  end

  private
  def admin_params
    params.require(:admin).permit(:name, :email, :password)
  end
end
