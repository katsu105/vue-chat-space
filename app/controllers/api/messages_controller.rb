class Api::MessagesController < ApplicationController
  protect_from_forgery

  before_action :set_group, only: [:index, :create]

  def index
    @messages = @group.messages.order('updated_at ASC')
  end

  def create
    @message = @group.messages.new(message_params)
    if @message.valid?
      @message.save
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.fetch(:message, {}).permit(:message)
  end

  def set_group
    @group = Group.find(params.permit(:group_id)[:group_id])
  end
end