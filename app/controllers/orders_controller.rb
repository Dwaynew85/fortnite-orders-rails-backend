class OrdersController < ApplicationController
    def create
        user_params
        order_params
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
