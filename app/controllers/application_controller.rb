class ApplicationController < ActionController::API
  
  def encode_token(payload)
    JWT.encode(payload, 'pray_for_snow')
  end

  def decode_token(token)
    JWT.decode(token, 'pray_for_snow')[0]
  end

end
