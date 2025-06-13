require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "should not save task without title" do
    task = Task.new
    assert_not task.save, "Saved the task without a title"
  end

  test "should create task with completed false" do
    task = Task.new
    task.title = "Laundry"

    refute task.completed, "Default value of completed is true" 
    assert task.save, "Did not save a valid Task"
  end

  test "equivalence operator" do
    taskA = Task.new(title: "A", description: "Entro domani")
    taskB = Task.new(title: "A", description: "Entro domani") 
    taskC = Task.new(title: "C", description: "Entro domani")

    assert taskA == taskB, "Tasks A and B are considered different."
    refute taskA == taskC, "Tasks A and C are considered equivalent"
  end
end
