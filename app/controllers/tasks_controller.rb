class TasksController < ApplicationController    
  # localhost:3000/tasks
  def index
    @q = Task.ransack(params[:q])
    if params[:q]
      # 検索の処理を行う
      @tasks = @q.result(distinct: true)
    else
      # 一覧を表示する(公開設定フォルダの中身のみ)
      release = Folder.select(:id).where(status:0)
      @tasks = Task.where(folder_id:release)
    end
  end

  def edit
    @mytask = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:url, :description, :user_id, :folder_id)
  end
end
