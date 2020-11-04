class PlayersController < ApplicationController
    
    def signup
        @player = Player.new
    end

    def create
        @player = Player.new(player_params)
        if @player.save
            session[:player_id] = @player.id
            redirect_to characters_path(@player)
        else
            render :'players/signup'
        end
    end

private

    def player_params
        params.require(:player).permit(:username, :password, :name, :email)
    end
end