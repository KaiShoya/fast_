class RoomsController < ApplicationController
  # FIXME
  skip_before_action :verify_authenticity_token

  def root
    @rooms = Room.all
    if @rooms.size > 0
      @room_id = @rooms[0].id.to_i
      room = Room.find(@room_id)
      @messages = room.messages
    else
      @messages = nil
    end
  end

  def show
    @room_id = params[:id].to_i
    @rooms = Room.all
    room = Room.find(params[:id])
    @messages = room.messages
  end

  def create
    @room = Room.new(name: params[:name], detail: params[:detail])

    respond_to do |format|
      if @room.save
        format.html { redirect_to room_show_path(@room.id), notice: 'room was successfully created.' }
        format.json { render json: @room, status: :created, location: @room }
      else
        format.html { render action: "new" }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # def insert
  #   Room.create(name: request[:name], detail: request[:detail])
  #   redirect_to
  # end
end
