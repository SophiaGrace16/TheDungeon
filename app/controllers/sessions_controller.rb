class SessionsController < ApplicationController
    def welcome
    end

    def playerlogin
       render :'/players/login'
    end

    def playercreate
        @player = Player.find_by(username: params[:username])
        if @player && @player.authenticate(params[:password])
          session[:player_id] = @player.id
          redirect_to characters_path
        else
          redirect_to players_login_path
        end
      end
    end

    def dmlogin
        render :'/dms/login'
    end
    
    def dmcreate
        @dm = Dm.find_by(username: params[:username])
        if @dm && @dm.authenticate(params[:password])
          session[:dm_id] = @dm.id
          redirect_to stories_path
        else
          redirect_to dms_login_path
        end
      end
    
      def destroy
        session.clear
        redirect_to '/welcome'
      end
end