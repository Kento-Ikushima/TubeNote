class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    release = Folder.select(:id).where(status:0)
    @tasks = Task.where(folder_id:release).where(user_id:params[:id])
  end

  
end
