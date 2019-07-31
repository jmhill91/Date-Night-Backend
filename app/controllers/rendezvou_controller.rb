class RendezvouController < ApplicationController

  def create
    rendezvous = Rendezvou.create(rendezvou_params)
    if rendezvous.valid?
      if params[:surprise] === false
        send_message("+1#{params[:soPhone]}", params[:message])
        render json: rendezvous
      else
        render json: rendezvous
      end
    else
      render json: { errors: rendezvous.errors.full_messages }
    end
  end


  def index
    rendezvous = Rendezvou.all
    render json: rendezvous
  end

  def show
    rendezvou = Rendezvou.find_by(id: params[:id])
    render json: rendezvou
  end

  def update
    rendezvou = Rendezvou.find_by(id: params[:id])
    rendezvou.update(rendezvou_params)
    render json: rendezvou
  end

  def destroy
    rendezvou = Rendezvou.find_by(id: params[:id])
    rendezvou.destroy
  end

  private

  def rendezvou_params
    params.permit(:date, :time, :location, :user_id, :attire_id, :rendezvous_type_id, :babysitter)
  end
end
