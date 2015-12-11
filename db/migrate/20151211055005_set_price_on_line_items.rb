class SetPriceOnLineItems < ActiveRecord::Migration
  def change
  	LineItem.all.each do |item|
  		item.price = item.product.price
  		item.save!
  	end
  end
end
