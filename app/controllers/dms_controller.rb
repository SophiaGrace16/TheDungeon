class DmsController < ApplicationController
    def signup
        @dm = Dm.new
    end

    def create
        @dm = Dm.new(dm_params)
        if @dm.save
            session[:dm_id] = @dm.id
            redirect_to stories_path(@dm)
        else
            render :'dm/signup'
        end
    end

private

    def dm_params
        params.require(:dm).permit(:username, :password, :name, :email)
    end
end