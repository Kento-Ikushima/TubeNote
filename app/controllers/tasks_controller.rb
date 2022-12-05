class TasksController < ApplicationController
  def index
    release = Folder.select(:id).where(status:0)
    @tasks = Task.where(folder_id:release) 
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
