class ApplicationController < ActionController::API

  #calls authorized before anything else
  before_action :authorized 
  
  def encode_token(payload)
    JWT.encode(payload, 'pray_for_snow')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decode_token(token)
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'pray_for_snow', true, algorithm: 'HS256')
      resuce JWT::DecodeError
        nill
    end
  end

  def current_admin
    if decode_token
      admin_id = decode_token[0]['admin_id']
      @admin = Admin.find_by(id: admin_id)
    end
  end

  def logged_in?
    !!current #double bang (!!) returns boolean value
  end     
    
  def authorized #Prompts user to log in if they are not authorized to view page or do action
    render json: {message: 'Please Log In'}, status: :unauthorized unless logged_in?
  end

end
