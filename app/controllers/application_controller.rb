class ApplicationController < ActionController::API
  
  def encode_token(payload)
    JWT.encode(payload, 'pray_for_snow')
  end
end
