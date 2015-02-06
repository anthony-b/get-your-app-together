class MytasksController < ApplicationController
def index
@mytasks = Task.where(:task_assignedto => current_user.profile_name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mytasks }
    end
  end
end
