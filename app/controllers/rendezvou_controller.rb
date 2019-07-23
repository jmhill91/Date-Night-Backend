class RendezvouController < ApplicationController

  def create
    rendezvous = Rendezvou.create(rendezvou_params)
    if rendezvous.valid?
      render json: rendezvous
    else
      render json: { errors: rendezvous.errors.full_messages }
    end
  end


  def index
    rendezvous = Rendezvou.all
    render json: rendezvous
  end

  private

  def rendezvou_params
    params.permit(:date, :time, :location, :user_id, :attire_id, :rendezvous_type_id, :babysitter)
  end
end
