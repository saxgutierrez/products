class ProductsController < ApplicationController
  def index
  	@products = Product.all
    @categories = Category.all
  end
  def new
  	@products = Product.new
  end
  def create
  	@products = Product.new(product_params)
    if @products.save
      redirect_to products_path, notice: "El producto ha sido creado con éxito" # esto es diferente que un error
    else
      render :new #vuelve al formulario de creación de habitación
    end
  end
  def edit
  	@products = Product.find(params[:id])
  end
  def update
  	 @products = Product.find(params[:id])
    if @products.update(product_params)
      redirect_to products_path, notice: "El producto ha sido modificado con éxito"
    else
      render :edit #vuelve al formulario de edición de habitación
    end
  end
  def destroy
  	@products = Product.find(params[:id])
  	@products.destroy

  	redirect_to products_path, notice: "El producto fué eliminado con éxito"
  end
  protected
    def product_params
      params.require(:product).permit(:name, :price, category_ids:[], product_ids:[])
    end
end
