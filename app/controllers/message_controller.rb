class MessageController < ApplicationController
  
  def index
    # Messageを全て取得する。
    @messages = Message.all
  end
  
  def create
    @message = Message.new(messsage_params)
    @message.save
  end
  
  private
  def message_params
    params.require(:message).permit(:name, :body)
    #params.require(:message).permit(:name, :body)
  end
end
