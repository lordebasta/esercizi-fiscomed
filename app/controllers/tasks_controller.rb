class TasksController < ApplicationController
  before_action :set_task, only: %i[ show update destroy ]

  # GET /tasks
  def index
    tasks = Task.all

    # Filter
    tasks = tasks.where("title ILIKE ?", "%" + tasks.sanitize_sql_like(params[:title]) + "%") if params[:title].present?
    tasks = tasks.where(completed: params[:completed]) if params[:completed].present?

    # Pagination
    if params[:page].present? 
      page = params[:page].to_i > 0 ? params[:page].to_i : 1
      page_size = params[:page_size].to_i > 0 ? params[:page_size].to_i : 2
      tasks = tasks.limit(page_size).offset((page - 1) * page_size)
    end

    render json: tasks
  end

  # GET /tasks/:id
  def show
    render json: @task
  end

  # POST /tasks
  def create
    task = Task.new(task_params)

    if task.save
      render json: task, status: :created, location: task
    else
      render json: task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy!
  end

  private
    def set_task
      @task = Task.find(params.expect(:id))
    end

    def task_params
      params.expect(task: [ :title, :description, :completed ])
    end
end
