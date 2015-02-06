require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { ID_org: @task.ID_org, ID_product: @task.ID_product, ID_task: @task.ID_task, task_assignedto: @task.task_assignedto, task_completed: @task.task_completed, task_completedby: @task.task_completedby, task_createdby: @task.task_createdby, task_datecreated: @task.task_datecreated, task_description: @task.task_description, task_orgassignedto: @task.task_orgassignedto, task_productassignedto: @task.task_productassignedto, task_title: @task.task_title, task_type: @task.task_type }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    put :update, id: @task, task: { ID_org: @task.ID_org, ID_product: @task.ID_product, ID_task: @task.ID_task, task_assignedto: @task.task_assignedto, task_completed: @task.task_completed, task_completedby: @task.task_completedby, task_createdby: @task.task_createdby, task_datecreated: @task.task_datecreated, task_description: @task.task_description, task_orgassignedto: @task.task_orgassignedto, task_productassignedto: @task.task_productassignedto, task_title: @task.task_title, task_type: @task.task_type }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
