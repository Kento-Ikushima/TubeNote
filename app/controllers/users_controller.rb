class UsersController < ApplicationController
  def show
    @other_user = User.find(params[:id])
    release = Folder.select(:id).where(status:0)
    @tasks = Task.where(folder_id:release).where(user_id:params[:id])
  end

  
end
