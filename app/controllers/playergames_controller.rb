class PlayergamesController < ApplicationController
    before_action :set_game, only: [:show, :edit, :update, :destroy]
    before_action :set_player
    before_action :redirect_if_player_not_logged_in

    def index
        @playergames = Playergame.all
    end

    def new 
        # gets new form
        @playergame = Playergame.new
        @dm = Dm.all
        @game = Game.all
        @character = current_player.characters.all
    end

    def create
        #posts new form
        @playergame = current_player.playergames.build(playergame_params) #sets this to the current player
        # binding.pry
        if @playergame.save
            redirect_to player_playergame_path(@player,@playergame)
        else
            render 'new_player_playergame'
        end
    end

    def edit
        #gets edit form
        if !@playergame
            redirect_to player_playergames_path(@player)
        end
    end

    def show
        #shows the information
        if !@playergame
            redirect_to player_playergames_path(@player)
        end
    end

    def update
    #posts edit form
        if @playergame
            @playergame.update(playergame_params)
                if @playergame.errors.any?
                    render 'edit'
                else
                    redirect_to player_playergame_path(@player,@playergame)
                end
        else
            render 'edit'
        end
    end

    def destroy
        #deletes the game
        @playergame.destroy
        redirect_to player_playergames_path(@player)
    end

private

    def set_player
        @player = Player.find_by_id(params[:player_id])
    end

    def set_game
        @playergame = Playergame.find_by_id(params[:id])
    end

    def playergame_params
        params.require(:playergame).permit(:camp_name, :loot_found, :character, :date_joined, :coin_reward, :exp_gained, :game_notes, :player_host_name)
    end
end
