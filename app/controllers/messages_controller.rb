class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    render :json => {
      content: params[:mensahe]
    }
  end

  private
    def message_params
      params.require(:message).permit(:content)
    end
end
