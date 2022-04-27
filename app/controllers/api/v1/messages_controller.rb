class Api::V1::MessagesController < ApplicationController
  def index
    @message = Message.order('RANDOM()').first
    if @message
      render json: { success: true, message: 'Message(s) loaded.', data: { greeting: @message } }, status: :ok
    else
      render json: { success: false, errors: 'ERROR...Message not load!' }, status: :unprocessable_entity
    end
  end
end
