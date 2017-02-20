class ProductsController < ApplicationController

	def index
		if params[:grouping] == "Order"
			@parent = Order.find(params[:order_id])
			@parent_type = "Order"
		elsif params[:grouping] == "Category"
			@parent = Category.find(params[:category_id])
			@parent_type = "Category"
		end
		@products = @parent.products
	end
end
