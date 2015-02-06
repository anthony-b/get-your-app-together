class TaskActivitiesController < ApplicationController

  # GET /task_activities
  # GET /task_activities.json
  def index
    @task_activities = TaskActivity.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @task_activities }
    end
  end

  # GET /task_activities/1
  # GET /task_activities/1.json
  def show
    @task_activity = TaskActivity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task_activity }
    end
  end

  # GET /task_activities/new
  # GET /task_activities/new.json
  def new
    @task_activity = TaskActivity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task_activity }
    end
  end

  # GET /task_activities/1/edit
  def edit
    @task_activity = TaskActivity.find(params[:id])
  end

  # POST /task_activities
  # POST /task_activities.json
  def create
    @task_activity = TaskActivity.new(params[:task_activity])

    respond_to do |format|
      if @task_activity.save
        format.html { redirect_to @task_activity, notice: 'Task activity was successfully created.' }
        format.json { render json: @task_activity, status: :created, location: @task_activity }
      else
        format.html { render action: "new" }
        format.json { render json: @task_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /task_activities/1
  # PUT /task_activities/1.json
  def update
    @task_activity = TaskActivity.find(params[:id])

    respond_to do |format|
      if @task_activity.update_attributes(params[:task_activity])
        format.html { redirect_to @task_activity, notice: 'Task activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_activities/1
  # DELETE /task_activities/1.json
  def destroy
    @task_activity = TaskActivity.find(params[:id])
    @task_activity.destroy

    respond_to do |format|
      format.html { redirect_to task_activities_url }
      format.json { head :no_content }
    end
  end
end
