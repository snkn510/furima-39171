class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]


  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :category_id, :condition_id, :shipping_charge_id, :region_id, :days_to_ship_id, :price, :image)
  end

end


