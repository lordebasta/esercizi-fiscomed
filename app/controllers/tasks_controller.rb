class TasksController < ApplicationController
  before_action :set_task, only: %i[ show update destroy ]

  # GET /tasks
  def index
    if params[:page].present?
      page = params[:page].to_i
      if page < 1
        page = 1
      end
      page_size = params[:page_size] || 10
      if page_size < 1
        render json: {error: "`page_size` can't be less than 1."}, status: 400
      end
      @tasks = Task.limit(page_size).offset((page-1)*page_size)
    else
      @tasks = Task.all
    end

    render json: @tasks
  end

  # GET /tasks/:id
  def show
    render json: @task
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
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
