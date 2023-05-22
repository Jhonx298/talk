class MessagesController < ApplicationController
  
  def index
    @theme = Theme.find(params[:theme_id])
    @message = Message.new
    @messages = @theme.messages.includes(:user)
  end

  def create
    @themes = Theme.find(params[:theme_id])
    @message = @themes.messages.new(message_params)
    if @message.save
      redirect_to theme_messages_path
    else
      @messages = @theme.messages.includes(:user)
      render :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
