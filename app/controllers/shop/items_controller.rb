class Shop::ItemsController < ApplicationController
  
  def index
    @items = item.all
  end

  def new
    @item = item.new
  end

  def create
    @item = item.new(item_params)
    if @item.save
      redirect_to @item, notice: '商品が正常に登録されました。'
    else
      render :new
    end
  end

  def show
    @item = item.find(params[:id])
  end
  
  private

  def item_params
    items.require(:item).permit(:name, :description, :price, :category, :image, :stock)
  end
  
end