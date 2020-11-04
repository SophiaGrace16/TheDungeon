class StoriesController < ApplicationController
    
    def current_dm
        @dm ||= Dm.find_by_id(id: session[:dm_id])
    end
    
    def index
        @stories = current_dm.stories.all
        render :'/stories'
    end

end
