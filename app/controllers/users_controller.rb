class UsersController < ApplicationController
  def show
    @other_user = User.find(params[:id])
    @tasks = Task.where(folder_id: Folder.where(status: 0)).where(user_id: params[:id])
    @following_user = @other_user.following_user.where.not(id: current_user.id)
    @follower_user = @other_user.follower_user.where.not(id: current_user.id)
  end

  
end
