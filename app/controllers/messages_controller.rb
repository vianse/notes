class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @messages = Message.all
    respond_with(@messages)
  end

  def show
    respond_with(@message)
  end

  def new
    @message = Message.new
    respond_with(@message)
  end

  def edit
  end

  def create
    @message = Message.new(message_params)
    @message.save
    sync_new @message
    respond_with(@message)
  end

  def update
    @message.update(message_params)
    sync_update @message
    respond_with(@message)
  end

  def destroy
    @message.destroy
    sync_destroy @message
    respond_with(@message)
  end

  private
    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:movildestino, :message, :movilorigen)
    end
end
