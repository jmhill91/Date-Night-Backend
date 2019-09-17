class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.valid?
      render json: { token: encode_token(user_payload(user)) }
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  def index
    users = User.all
    options = {
      include: [:rendezvous, :attire, :rendezvous_type]
    }
    render json: UserSerializer.new(users)
  end

  def profile
    render json: UserSerializer.new(current_user)
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    render json: UserSerializer.new(user)
  end
  
  private

  def user_params
    params.permit(:username, :password, :name, :phone_number, :email, :significant_other_phone)
  end
end
