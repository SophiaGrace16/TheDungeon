class StoriesController < ApplicationController
    before_action :set_story, only: [:show, :edit, :update, :destroy]
    before_action :redirect_if_dm_not_logged_in

    def index
        @stories = current_dm.stories.all
    end

    def new 
        # gets new form
        @story = Story.new
    end

    def create
        #posts new form
        @story = current_dm.stories.build(story_params) #sets this to the current dm
      if @story.save
        redirect_to story_path(@story)
      else
        render 'new'
      end
    end

    def edit
        if !@story
            redirect_to stories_path
        end
    end

    def show

    end

    def update
    end

    def delete
    end

private

    def set_story
        @story = Story.find_by_id(params[:id])
    end

    def story_params
        params.require(:story).permit(:title, :setting, :camp_type, :final_boss, :item_reward, :coin_reward, :exp_reward, :story_link, :summary, :difficulty)
    end

end
