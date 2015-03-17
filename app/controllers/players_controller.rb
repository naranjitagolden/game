class PlayersController < ApplicationController
  def index
  end

  def new
  	@player = Player.new
  	
  end

  def create
  	@player = Player.new(player_params)
    
    if @player.save
      
      flash[:notice] = "El jugador se ha creado"
    end
    render 'new'
  	
  end

  private

  def player_params
  	params.require(:player).permit(:email, :name, :username, :points, :active)
  	
  end
end
