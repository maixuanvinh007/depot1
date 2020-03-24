class ApplicationController < ActionController::Base
    before_action :authorize

    module CurrentCart
        private
        def set_cart
        @cart = Cart.find(session[:cart_id])
        rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
        end
    end

    protected
        def authorize
            unless User.find_by(id: session[:user_id])
                redirect_to login_url, notice: "Please log in"
            end
        end

end
