class MyTasksController < ApplicationController
    
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
      @task = Task.new(task_params)
    end
    
    def new
      @mytask = Task.new
    end

    def edit
    end
    
    def delete
    end

    def task_params
      params.require(:task).permit(:url, :description, :user_id, :folder_id)
    end
    
end
