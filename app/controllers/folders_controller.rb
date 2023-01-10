class FoldersController < ApplicationController
before_action :authenticate_user!

  def index
    @folders = current_user.folders
  end
    
  def create
    @folder = current_user.folders.new(folder_params)
    @folder.save
    redirect_to folders_path
  end
    
  def new
    @folder = Folder.new
  end

  def edit
    @folder = Folder.find(params[:id])
  end
    
  def update
    folder = Folder.find(params[:id])
    folder.update!(folder_params)
    redirect_to folders_url
  end
      
  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    redirect_to folders_path
  end

  def destroy_many
    checked_date = params[:deletes].keys
    if Folder.destroy(checked_date)
      redirect_to folders_path
    else
      render action: 'index'
    end
  end

  private
  def folder_params
    params.require(:folder).permit(:folder_name, :status)
  end

end
