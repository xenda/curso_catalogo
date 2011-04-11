module ProductsHelper

  def show_available
    @product.available? ? "Si" : "No"
  end


end
