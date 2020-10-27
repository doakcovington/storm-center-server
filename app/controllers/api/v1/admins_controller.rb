class Api::V1::AdminsController < ApplicationController

  #before_action :authorized

  def create
    @admin = Admin.create(admin_params)
    if @admin.valid?
      token = encode_token({admin_id: @admin.id})
      render json: {admin: @admin, token: token}
    else
      render json: {error: "Invalid email or password"}
    end
  end

  # LOGGING IN
  def login
    @admin = Admin.find_by(email: params[:email])

    if @admin && @admin.authenticate(params[:password])
      token = encode_token({admin_id: @admin.id})
      render json: {admin: @admin, token: token}
    else
      render json: {error: "Invalid email or password"}
    end
  end

  
  private

  def admin_params
    params.permit(:email, :password)
  end
end
