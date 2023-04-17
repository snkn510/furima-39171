class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]


  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

end
