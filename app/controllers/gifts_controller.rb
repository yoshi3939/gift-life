class GiftsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_gift, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  def index
    @gifts = Gift.order('event_date DESC')
  end

  def new
    @gift = Gift.new
  end

  def create
    @gift = Gift.create(gift_params)
    if @gift.save
      redirect_to gifts_path
    else
      render :new
    end
  end

  def show
    @gift = Gift.find(params[:id])
  end

  def edit
  end

  def update
    if @gift.update(gift_params)
      redirect_to gift_path(@gift.id)
    else
      render :edit
    end
  end

  def destroy
    @gift.destroy
    redirect_to gifts_path
  end

  def search
    @gifts = Gift.search(params[:keyword]).order('event_date DESC')
  end

  private

  def gift_params
    params.require(:gift).permit(:status_id, :name, :image, :partner, :event_date, :event, :memo).merge(user_id: current_user.id)
  end

  def set_gift
    @gift = Gift.find(params[:id])
  end

  def correct_user
    redirect_to gifts_path unless current_user.id == @gift.user_id
  end
end
