class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end
    
    def create
        @user = User.find_or_create_by(user_params)
        @order = Order.create(total: order_params[:total])
        @order.user = @user
        @items = Item.set_items(order_params[:items])
        @order.items = @items
        @order.save
        byebug
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :address)
    end

    def order_params
        params.require(:order)
        .permit(:total, :items => [:name, :cost, :icon, :id])
    end

    
end
