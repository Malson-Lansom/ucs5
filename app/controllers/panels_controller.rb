class PanelsController < ApplicationController
  before_action :set_group

  def index
    @panels = @group.panels.includes(:user)
    @qanda = @panels.to_json
  end
  
  def new
    @panel = Panel.new
    @panels = @group.panels.includes(:user)
  end

  def create
    @panel = @group.panels.new(panel_params)
    if @panel.save
      respond_to do |format|
        format.json
      end
    else
      @panels = @group.panels.includes(:user)
      flash.now[:alert] = '送信エラー'
      render :new
    end
  end

  private

  def panel_params
    params.require(:panel).permit(:question, :answer).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

end
