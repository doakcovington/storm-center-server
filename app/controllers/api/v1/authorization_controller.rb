class Api::V1::AuthorizationController < ApplicationController
  skip_before_action :authroized, only: [:create]

  def create
    @admin = Admin.find_by(email: admin_login_params[:email])
    if @admin && @admin.authenticate(admin_login_params[:password])
      token = encode_token({ admin_id: @admin.id})
      render json: { admin: AdminSerializer.new(@admin), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create admin' }, status: :not_acceptable
    end
  end

  private
  def admin_login_params
    params.require(:admin).permit(:email, :password)
  end
end
