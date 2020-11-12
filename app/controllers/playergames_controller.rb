class PlayergamesController < ApplicationController
    before_action :set_playergame, only: [:show, :edit, :update, :destroy]
    before_action :set_player
    before_action :redirect_if_player_not_logged_in

    def index
        @playergames = current_player.playergames.all
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
        binding.pry
        if @playergame.save
            redirect_to player_playergame_path(current_player,@playergame)
        else
            redirect_to new_player_playergame_path(current_player)
        end
    end

    def edit
        #gets edit form
        if @playergame.player_id != current_player.id
            redirect_to player_playergames_path(current_player)
        elsif @playergame.player_id == current_player.id
            if !@playergame
                redirect_to player_playergames_path(current_player)
            end
        end
    end

    def show
        #shows the information
        if !@playergame
            redirect_to player_playergames_path(current_player)
        end
    end

    def update
    #posts edit form
        if @playergame
            @playergame.update(playergame_params)
                if @playergame.errors.any?
                    render 'edit'
                else
                    redirect_to player_playergame_path(current_player,@playergame)
                end
        else
            render 'edit'
        end
    end

    def destroy
        #deletes the game
        @playergame.destroy
        redirect_to player_playergames_path(current_player)
    end

private

    def set_playergame
        @playergame = Playergame.find_by_id(params[:id])
    end

    def playergame_params
        params.require(:playergame).permit(:loot_found, :character, :date_joined, :coin_reward, :exp_gained, :game_notes, :dm_host_name, :game_id)
    end
end
