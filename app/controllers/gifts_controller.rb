class GiftsController < ApplicationController
  
  def index
    @gifts = Gift.order("created_at DESC")
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.create(gift_params)
    if @gift.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def gift_params
    params.require(:gift).permit(:status_id, :name, :image, :partner, :event_date, :event, :memo)
  end

end