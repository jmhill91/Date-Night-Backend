class RendezvousTypeController < ApplicationController


  def index
    rendezvous_types = RendezvousType.all
    render json: rendezvous_types
  end

end
