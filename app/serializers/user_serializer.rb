class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :phone_number, :email, :significant_other_phone, :password_digest, :rendezvous

end
