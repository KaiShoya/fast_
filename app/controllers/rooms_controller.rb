class RoomsController < ApplicationController
  def root
    @rooms = Room.all
    if @rooms.size > 0
      room = Room.find(1)
      @messages = room.messages
    end
    @messages = nil
    @user = current_user
  end

  def show
    @room_id = params[:id]
    @rooms = Room.all
    room = Room.find(params[:id])
    @messages = room.messages
    @user = current_user
  end
end
