class PlayersController < ApplicationController

    def signup
        @player = Player.new
    end

end