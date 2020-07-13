class FoldersController < ApplicationController
  def index
    @folders = Folder.all
  end
  
  def new
    @folders = Folder.all
    @folder = Folder.new
    # devise実装後
    # @folder.users << current_user
  end

  def create
    @folder = Folder.new(folder_params)
    if @folder.save
      redirect_to root_path, notice: 'フォルダを作成しました'
    else
      render :new
    end
  end

  private
  def folder_params
    params.require(:folder).permit(:title)
  end

end
