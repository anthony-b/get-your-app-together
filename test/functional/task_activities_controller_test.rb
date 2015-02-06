require 'test_helper'

class TaskActivitiesControllerTest < ActionController::TestCase
  setup do
    @task_activity = task_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_activity" do
    assert_difference('TaskActivity.count') do
      post :create, task_activity: { notes: @task_activity.notes, time_taken: @task_activity.time_taken }
    end

    assert_redirected_to task_activity_path(assigns(:task_activity))
  end

  test "should show task_activity" do
    get :show, id: @task_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task_activity
    assert_response :success
  end

  test "should update task_activity" do
    put :update, id: @task_activity, task_activity: { notes: @task_activity.notes, time_taken: @task_activity.time_taken }
    assert_redirected_to task_activity_path(assigns(:task_activity))
  end

  test "should destroy task_activity" do
    assert_difference('TaskActivity.count', -1) do
      delete :destroy, id: @task_activity
    end

    assert_redirected_to task_activities_path
  end
end
