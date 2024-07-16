class Shop::ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to shop_item_path(@item), notice: '商品が正常に登録されました。'
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :category, :image, :stock)
  end
  
end