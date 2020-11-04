module ApplicationHelper
    def current_dm
        @dm ||= DM.find_by(id: session[:dm_id])
    end
end
