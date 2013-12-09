class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
     @messages = Message.all
  end

  def create
     @message = Message.new(message_params)
     @message.save
  end
  
  def destroy
     @message = Message.find_by_id(params[:id])
	 @message.destroy
  end
  
  private
    def message_params
      params.require(:message).permit(:username, :active, :app_id, :to, :from, :EncryptedMessage)
    end
end
