class MyTasksController < ApplicationController
    def index
      @mytasks = Task.where(user_id: current_user.id)    
    end
    
    def create
      @mytask = Task.new(task_params)
        # url = params[:task][:url]
        # url = url.last(11)
        # @task.url = url
      end
    
    def new
      @mytask = Task.new
    end
    
    def delete
    end
    
    def task_params
      params.require(:task).permit(:url, :description, :user_id, :folder_id)
    end
end
