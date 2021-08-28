class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :search]
  before_action :if_not_admin, except: [:index, :search]
  before_action :set_item, only: [:edit, :update, :destroy]

  def index
    @items = Item.includes(:user).order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  def search
    @items = Item.search(params[:keyword]).order('created_at DESC')
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :price, :memo, :shop, :shopinfo).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end
end
