class MyTasksController < ApplicationController
    before_action :search

    def search
      @q = Task.ransack(params[:q])
    end
    
    def index
      @mytasks = Task.where(user_id: current_user.id)    
      @qmytasks = @q.result(distinct: true)
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
