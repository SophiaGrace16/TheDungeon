class CharactersController < ApplicationController

    def index
        @characters = current_player.characters.all
    end

end