require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url, as: :json
    assert_response :success
    assert_equal Task.count, JSON.parse(response.body).length
  end

  # test "pagination works" do
  #   get tasks_url, as: :json, params: { page: 0, page_size: -1 } 
  #   assert_response 400

  #   get tasks_url,  params: { page: 1, page_size: 2 }, as: :json
  #   assert_response :success
  #   assert_equal 2, JSON.parse(response.body).length

  #   get tasks_url, as: :json, params: { page: 2, page_size: 2 } 
  #   assert_response :success
  #   assert_equal 1, JSON.parse(response.body).length
  # end

  test "should create task" do
    assert_difference("Task.count") do
      post tasks_url, params: { task: { completed: @task.completed, description: @task.description, title: @task.title } }, as: :json
    end

    new_id = JSON.parse(response.body)["id"]
    new_task = Task.find(new_id)
    assert_response :created, "Couldn't create a new task"
    assert @task == new_task, "Created task is different from the one sent in request"
  end

  test "should create task with only a title" do
    assert_difference("Task.count") do
      post tasks_url, params: { task: { title: "Ahia" } }, as: :json
    end

    new_id = JSON.parse(response.body)["id"]
    new_task = Task.find(new_id)
    assert_response :created, "Couldn't create a new task"
    assert Task.new(title: "Ahia") == new_task, "Created task is different from the one sent in request"
  end
  
  test "attempt to create task with no title" do
    post tasks_url, params: { task: { completed: @task.completed, description: @task.description } }, as: :json
    assert_response 400, "Created a task without a title"
  end

  test "should show task" do
    get task_url(@task), as: :json
    assert_response :success
  end

  test "attempt to show task with invalid id" do
    get task_url(100), as: :json
    assert_response :missing
  end

  test "should update task" do
    patch task_url(@task), params: { task: { completed: @task.completed, description: @task.description, title: @task.title } }, as: :json
    assert_response :success
  end

  test "attempt to edit task with invalid id" do
    patch task_url(100), params: { task: { completed: @task.completed, description: @task.description, title: @task.title } }, as: :json
    assert_response :missing
  end
  
  test "attempt to edit task with invalid field" do
    patch task_url(@task), params: { task: { address: "29, lincoln street" } }, as: :json
    assert_response 400
  end

  test "attempt to edit task with no fields" do
    patch task_url(@task), params: { task: {} }, as: :json
    assert_response 400
  end

  test "should destroy task" do
    assert_difference("Task.count", -1) do
      delete task_url(@task), as: :json
    end

    assert_response :no_content
  end
end
