class ApplicationController < ActionController::API
  def encode_token(payload)
    JWT.encode payload, secret, 'HS256'
  end

  def user_payload(user)
    { user_id: user.id }
  end

  def secret
   Rails.application.credentials.password_secret
  end

  def token
    request.headers["Authorization"]
  end

  def decoded_token
    JWT.decode token, secret, true, { algorithm: 'HS256' }
  end

  def current_user
    User.find(decoded_token[0]["user_id"])
  end

  def account_sid
    Rails.application.credentials.account_sid
  end

  def auth_token
    Rails.application.credentials.auth_token
  end

  def twil_num
    '+13605066060'
  end

  def send_message(phone_num, date_message)
    @client = Twilio::REST::Client.new(account_sid, auth_token)
    message = @client.messages.create(
                             body: date_message,
                             from:  twil_num,
                             to: phone_num
                           )
    puts message.sid
  end
end
