class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end


  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    
    def set_product
      if params['pID']
        @product = Product.find(params[:pID])
      else
        @product = Product.find(params[:id])
      end
    end

    def product_params
      params.require(:product).permit(:name, :sku, :description, :ost_id, :priority)
    end
    
end
