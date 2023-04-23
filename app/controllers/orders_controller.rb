class OrdersController < ApplicationController
  def index
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new
  end

  def new
  end

  def create
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
   else
     render action: :index
   end
  end
  
  private
  
  def order_params
    params.require(:order_address).permit(:postal_code, :region_id, :city, :street, :building_name, :phone_number, :item_id).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end


# @order_form = OrderForm.new(order_params)
# if @order_form.valid?
#   pay_item
#   @order_form.save
#   redirect_to root_path
# else
#   render :index
# end
# end

# private

# def order_params
# # この時点では、order_idが不要。またrequire外の情報は参照するため、mergeとする。
# params.require(:order_form).permit(:postcode, :prefecture_id, :city, :block, :building, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
# end