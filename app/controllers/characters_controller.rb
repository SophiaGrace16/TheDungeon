class CharactersController < ApplicationController
    before_action :set_character, only: [:show, :edit, :update, :destroy]
    before_action :redirect_if_player_not_logged_in

    def index
        @characters = current_player.characters.all
    end

    def new 
        # gets new form
        @character = Character.new
    end

    def create
        #posts new form
        @character = current_player.characters.build(character_params) #sets this to the current dm
      if @character.save
        redirect_to character_path(@character)
      else
        render 'new'
      end
    end

    def edit
        #gets edit form
        if !@character
            redirect_to characters_path
        end
    end

    def show
        #shows the information
        if !@character
            redirect_to characters_path
        end
    end

    def update
        #posts edit form
        if @character
            @character.update(character_params)
                if @character.errors.any?
                    render 'edit'
                else
                    redirect_to character_path(@character)
                end
        else
            render 'edit'
        end
    end

    def destroy
        #deletes the character
        @character.destroy
        redirect_to characters_path
    end

private

    def set_character
        @character = character.find_by_id(params[:id])
    end

    def character_params
        params.require(:character).permit(:name, :class, :level, :background, :race, :alignment, :exp, :str, :con, :dex, :inte, :wis, :chari, :str_mod, :dex_mod, :con_mod, :inte_mod, :wis_mod, :chari_mod, :passive_wis, :proficiencies, :lang, :armor_class, :initiative, :speed, :hit_pt_max, :hit_dice, :spellname, :spell_desc, :arm_desc, :cp, :sp, :ep, :gp, :pp, :personality_traits, :ideas, :bonds, :flaws, :feat_traits, :race_info, :class_info, :bg_story, :lvl_gain)
    end

end
