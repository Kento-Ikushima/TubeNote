class MyTasksController < ApplicationController
  before_action :authenticate_user!

  def index
    # debugger  todo:動かない
    @q = Task.where(user_id: current_user.id).ransack(params[:q])
    if params[:q]
      @mytasks = @q.result(distinct: true)
    else
      @mytasks = current_user.tasks
    end
  end
  
  def create
    @mytask = current_user.tasks.new(task_params)
    @mytask.save
    redirect_to my_tasks_path
  end
  
  def new
    @mytask = Task.new
  end

  def edit
    @mytask = Task.find(params[:id])
    @my_folders = Folder.where(user_id: current_user)
  end
  
  def update
    @mytask = Task.find(params[:id])
    @mytask.update!(task_params)
    redirect_to my_tasks_path
  end

  def destroy
    @mytask = Task.find(params[:id])
    @mytask.destroy
    redirect_to my_tasks_path
  end

  def destroy_many
    unless params[:deletes].nil?
      checked_date = params[:deletes].keys
      Task.destroy(checked_date)
      redirect_to my_tasks_path
    else
      redirect_to my_tasks_path
    end
  end

  def task_params
    params.require(:task).permit(:url, :description, :user_id, :folder_id)
  end
  
end
