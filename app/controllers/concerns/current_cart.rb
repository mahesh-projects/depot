module CurrentCart
	extend ActiveSupport::Concern

	private 
		
		def set_cart
			@cart = Cart.find(session[:cart_id])
			reset_counter
		rescue ActiveRecord::RecordNotFound
			@cart = Cart.create
			session[:cart_id] = @cart.id
			reset_counter
		end

		def reset_counter
			unless session[:counter].nil?
				session[:counter] = 0
			end
		end
end