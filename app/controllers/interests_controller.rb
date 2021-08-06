class InterestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_interest, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  def index
    @interests = Interest.includes(:user).order("created_at DESC")
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.create(interest_params)
    if @interest.save
      redirect_to interests_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @interest.update(interest_params)
      redirect_to interest_path(@interest.id)
    else 
      render :edit
    end
  end

  def destroy
    @interest.destroy
    redirect_to interests_path
  end

  private

  def interest_params
    params.require(:interest).permit(:name, :image, :price, :memo).merge(user_id: current_user.id)
  end

  def set_interest
    @interest = Interest.find(params[:id])
  end

  def correct_user
    unless current_user.id == @interest.user_id
      redirect_to interests_path
    end
  end

end
