class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    # render html: params
    @product = Product.find(params["id"])
  end

  def new
    @product = Product.new(title: 'hi') # 實體變數 model就可以拿得到
  end

  def create
    # @product = Product.new(params[:product])
    # product = params[:product]

    # @product = Product.new(params["product"])

    @product = Product.new(product_params)

    if @product.save
      redirect_to root_path
      # render html: params[:prduct]
      # render html: params["product"]
      # render html: @product[:admin]
    else
      # redirect_to new_products_path
      render :new #借new html檔案來用
    end
      
    

    # render html: "hi"
    # render html: params["product"]
    # render html: params[:prduct]
  end

  def destroy
     @product = Product.find(params["id"])
     @product.destroy
     redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(
      :title, :price, :sku, :description
    )
  end
  
end
