class ThemesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(root_params)
    if @theme.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def root_params
    params.require(:theme).permit(:theme_name, :theme_content, user_ids: [])
  end
end
