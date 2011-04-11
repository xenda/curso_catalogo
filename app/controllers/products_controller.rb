class ProductsController < InheritedResources::Base

  layout 'application'

  def pagination
   @products = Product.limit(10).offset(20)
   @products = Product.find_by_sql("select * from products limit 5, offset 10")
  end

  def collection
    @products ||= end_of_association_chain.paginate :page => params[:page]
  end

  def index
   @products = Product.paginate :page => params[:page]
  end

  def search
   @products = Product.pricier_than(params[:price]).limit(30).order("price DESC")
   render "index"
  end

end
