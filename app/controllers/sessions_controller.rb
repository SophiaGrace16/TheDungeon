class SessionsController < ApplicationController
    def welcome
    end

    def playerlogin
        render :'/players/login'
    end

    def playercreate
        @player = Player.find_by(username: params[:player][:username])
        # binding.pry
        if @player && @player.authenticate(params[:player][:password])
          session[:player_id] = @player.id
          redirect_to characters_path
        else
          redirect_to player_login_path
        end
    end

    def dmlogin
        render :'/dms/login'
    end
    
    def dmcreate
        @dm = Dm.find_by(username: params[:dm][:username])
        if @dm && @dm.authenticate(params[:dm][:password])
          session[:dm_id] = @dm.id
          redirect_to stories_path
        else
          redirect_to dm_login_path
        end
    end

    def googleomniauth
      @player = Player.create_by_google_omniauth(auth)
      session[:player_id] = @player.id
      redirect_to characters_path
    end
    
    def playerdestroy
      session.clear
      redirect_to '/'
    end

    def dmdestroy
      session.clear
      redirect_to '/'
    end
    
    private

      def auth
        request.env['omniauth.auth']
      end
end