class StoriesController < ApplicationController

    def index
        @stories = current_dm.stories.all
    end

end
