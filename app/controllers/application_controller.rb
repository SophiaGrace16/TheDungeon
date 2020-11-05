class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :player_logged_in?
    helper_method :current_player
    helper_method :dm_logged_in?
    helper_method :current_dm
    helper_method :player_or_dm

    def current_player
        @player ||= Player.find_by_id(session[:player_id])
    end
    
    def player_logged_in?
        !current_player.nil?
    end

    def current_dm
        @dm ||= Dm.find_by_id(session[:dm_id])
      end
    
    def dm_logged_in?
        !current_dm.nil?
    end

    def player_or_dm
        player_logged_in? || dm_logged_in?
    end
    
end
