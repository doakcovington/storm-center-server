class Api::V1::AuthorizationController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @admin = Admin.find_by(email: admin_params[:email])
    #User#authenticate comes from BCrypt
    if @admin && @admin.authenticate(admin_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @admin.id })
      render json: { admin: AdminSerializer.new(@admin), jwt: token }, status: :accepted
    else
      render json: { error: 'Invalid Login' }, status: :unauthorized
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password)
  end

end
