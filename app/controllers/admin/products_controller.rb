module Admin
  class ProductsController < ApplicationController
    def index
      products = Product.all
      render json: { products: ProductSerializer.new(products) }, status: 200
    end

    def create
      product = Product.new(product_params)

      if product.save
        render json: { product: ProductSerializer.new(product) }, status: 200
      else
        render json: { errors: product.errors.messages }, status: 406
      end
    end

    def update
      product = Product.find(params[:id])

      if product.update(product_params)
        render json: { product: ProductSerializer.new(product) }, status: 201
      else
        render json: { errors: product.errors.messages }, status: 406
      end
    end

    def show
      product = Product.find(params[:id])
      render json: { product: ProductSerializer.new(product) }, status: 200
    end

    def inactivate
      product = Product.find(params[:id])

      if product.update(is_active: false)
        render json: { product: ProductSerializer.new(product) }, status: 201
      else
        render json: { errors: product.errors.messages }, status: 406
      end
    end

    def activate
      product = Product.find(params[:id])

      if product.update(is_active: true)
        render json: { product: ProductSerializer.new(product) }, status: 201
      else
        render json: { errors: product.errors.messages }, status: 406
      end
    end

    private

    def product_params
       params.require(:product).permit(:name)
    end
  end
end
