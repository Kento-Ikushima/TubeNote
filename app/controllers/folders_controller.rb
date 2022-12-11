class FoldersController < ApplicationController
  def index
    @folders = current_user.folders
  end
    
  def create
  end
    
  def new
  end

  def edit
    @folder = Folder.find(params[:id])
  end
    
  def update
    folder = Folder.find(params[:id])
    folder.update!(folder_params)
    redirect_to folders_url
  end
      
  def delete
  end
    
  private
  def folder_params
    params.require(:folder).permit(:folder_name, :status)
  end

end
