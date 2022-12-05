class FoldersController < ApplicationController
    def index
        @folders = Folder.where(user_id: current_user.id)
    end
    
    def create
        @folder = Folder.new(folder_params)
    end
    
    def new
        @folder = Folder.new
    end

    def edit
    end
    
    def delete
    end

    def folder_params
        params.require(:folder).permit(:folder_name, :status, :user_id)
    end
    
end
