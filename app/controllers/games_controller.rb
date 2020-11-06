class GamesController < ApplicationController
    before_action :set_game, only: [:show, :edit, :update, :destroy]
    # before_action :redirect_if_dm_not_logged_in

    def index
        if current_dm
            @games = current_dm.games.all
        elsif current_player
            @games = current_player.games.all
        end
    end

    def new 
        # gets new form
        @game = Game.new
    end

    def create
        #posts new form
        if current_dm
            @game = current_dm.games.build(game_params) #sets this to the current dm
            binding.pry@
            if @game.save
                redirect_to game_path(@game)
            else
                render 'new'
            end
        elsif current_player
            @game = current_player.games.build(game_params) #sets this to the current dm
            if @game.save
                redirect_to game_path(@game)
            else
                render 'new'
            end
        end
    end

    def edit
        #gets edit form
        if !@game
            redirect_to games_path
        end
    end

    def show
        #shows the information
        if !@game
            redirect_to games_path
        end
    end

    def update
        #posts edit form
        if @game
            @game.update(game_params)
                if @game.errors.any?
                    render 'edit'
                else
                    redirect_to game_path(@game)
                end
        else
            render 'edit'
        end
    end

    def destroy
        #deletes the game
        @game.destroy
        redirect_to games_path
    end

private

    def set_game
        @game = Game.find_by_id(params[:id])
    end

    def game_params
        params.require(:game).permit(:active, :camp_name, :loot_found, :exp_gained, :date_started, :game_notes, :coin_reward)
    end
end
