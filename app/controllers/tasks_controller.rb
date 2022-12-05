class TasksController < ApplicationController
  def index
    @tasks = Task.where(user_id: current_user.id)
  end

  def create
    @task = Task.new(task_params)
    # url = params[:task][:url]
    # url = url.last(11)
    # @task.url = url
  end

  def new
    @task = Task.new
  end

  def task_params
    params.require(:task).permit(:url, :description, :user_id, :folder_id)
  end
end
