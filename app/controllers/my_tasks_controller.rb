class MyTasksController < ApplicationController
    before_action :search

    def search
      @q = Task.ransack(params[:q])
      @qq = @q.where(user_id: current_user.id)
    end
    
    def index
        @mytasks = Task.where(user_id: current_user.id)    
        @qqmytasks = @qq.result(distinct: true)
    end
    
    def create
    end
    
    def new
    end

    def edit
    end
    
    def delete
    end
    
end
