class PlayersController < ApplicationController
    def new
      @team = Team.find(params[:team_id])
      @player = @team.players.build
    end
  
    def create
      @team = Team.find(params[:team_id])
      @player = @team.players.build(player_params)
      if @player.save
        redirect_to @team
      else
        render :new
      end
    end
  
    private
    def player_params
      params.require(:player).permit(:name, :position)
    end
  end
  