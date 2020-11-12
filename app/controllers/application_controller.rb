class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper_method :player_logged_in?
    helper_method :current_player
    helper_method :dm_logged_in?
    helper_method :current_dm
    helper_method :redirect_if_player_not_logged_in
    helper_method :redirect_if_dm_not_logged_in

    def current_player
        Player.find_by_id(session[:player_id])
    end
    
    def player_logged_in?
        !current_player.nil?
    end

    def current_dm
        Dm.find_by_id(session[:dm_id])
      end
    
    def dm_logged_in?
        !current_dm.nil?
    end

    def redirect_if_player_not_logged_in 
        #checks if they player is logged in and then if they arent it redirects them if they are not
        if !player_logged_in?
          redirect_to players_login_path
        end
    end

    def redirect_if_dm_not_logged_in
        if !dm_logged_in?
          redirect_to dm_login_path
        end
    end
    
end
