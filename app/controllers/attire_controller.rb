class AttireController < ApplicationController

  def index
    attires = Attire.all
    render json: attires
  end
  
end
