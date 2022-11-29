class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    url = params[:task][:url]
    url = url.last(11)
    @task.url = url
  end
end
