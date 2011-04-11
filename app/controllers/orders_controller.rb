class OrdersController < InheritedResources::Base

  def create
    @product = Product.new(params[:product])
    
    @product.save

    if @product.client
      redirect_to @product
    else
      # algo pasa
    end
    
  end

end
