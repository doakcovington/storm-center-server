class ApplicationController < ActionController::API
  
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

end
