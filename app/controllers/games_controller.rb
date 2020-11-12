class GamesController < ApplicationController
    before_action :set_game, only: [:show, :edit, :update, :destroy]
    before_action :set_dm
    before_action :redirect_if_dm_not_logged_in

    def index
        @games = current_dm.games.all
    end

    def new 
        # gets new form
        @game = Game.new
    end

    def create
        #posts new form
        @game = current_dm.games.build(game_params) #sets this to the current dm
        if @game.save
            redirect_to dm_game_path(current_dm,@game)
        else
            redirect_to new_dm_game_path(current_dm)
        end
    end

    def edit
        if @game.dm_id != current_dm.id
            redirect_to dm_games_path(current_dm)
        elsif @game.dm_id == current_dm.id
            if !@game
                redirect_to dm_games_path(current_dm)
            end
        end
    end

    def show
        #shows the information
        if !@game
            redirect_to dm_games_path(current_dm)
        end
    end

    def update
    #posts edit form
        if @game
            @game.update(game_params)
                if @game.errors.any?
                    render 'edit'
                else
                    redirect_to dm_game_path(current_dm,@game)
                end
        else
            render 'edit'
        end
    end

    def active_games
        @games = current_dm.games.game_active
    end

    def destroy
        #deletes the game
        if @game.dm_id != current_dm.id
            redirect_to dm_games_path(current_dm)
        elsif @game.dm_id == current_dm.id
            @game.destroy
            redirect_to dm_games_path(current_dm)
    end

private

    def set_game
        @game = Game.find_by_id(params[:id])
    end

    def game_params
        params.require(:game).permit(:game_active, :camp_name, :loot_found, :coin_reward, :exp_gained, :game_notes, :date_started, :sessions_played)
    end
end
