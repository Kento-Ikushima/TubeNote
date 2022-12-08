class TasksController < ApplicationController
  # before_action :search

  # def search
  #   release = Folder.select(:id).where(status:0)
  #   @q = Task.where(folder_id:release).ransack(params[:q])
  # end
    
  # localhost:3000/tasks
  def index
    @q = Task.ransack(params[:q])
    @tasks = if params[:q]
      # 検索の処理を行う
      @q.result(distinct: true)
    else
      # 一覧を表示する
      Task.all
    end
  end

  def create
    @task = Task.new(task_params)
  end

  def new
    @task = Task.new
  end

  def task_params
    params.require(:task).permit(:url, :description, :user_id, :folder_id)
  end
end
