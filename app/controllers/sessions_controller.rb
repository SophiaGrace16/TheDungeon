class SessionsController < ApplicationController
    def welcome
    end

    def playerlogin
       render :'/players/login'
    end

    def playercreate
        # redirect to characters index here, save info here
    end

    def dmlogin
        render :'/dms/login'
    end
    
    def dmcreate
    end
end