class StoreController < ApplicationController
  
  before_action :set_counter, only: [:index]		

  def index
  	@products = Product.order(:title)
  end

  private 
  	def set_counter
		if session[:counter].nil?
			session[:counter] = 1
			@counter = session[:counter]
		else
			session[:counter] = session[:counter] + 1
			@counter = session[:counter]
		end
	end
end
