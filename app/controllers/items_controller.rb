class ItemsController < ApplicationController

  def index
    @famille = Famille.find(params[:famille_id])
    @items = Item.where(famille: @famille)
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @famille = Famille.find(params[:famille_id])
    @item = Item.new
  end

  def create
    @famille = Famille.find(params[:famille_id])
    @item = Item.create(item_params)
    @item.famille = @famille
    @item.save
    redirect_to famille_item_path(@famille, @item)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to famille_items_path
  end

  def edit
    @famille = Famille.find(params[:famille_id])
    @item = Item.find(params[:id])

  end

  def update
    @famille = Famille.find(params[:famille_id])
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to famille_item_path(@famille, @item)
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :url_image, :url_img2, :url_img3, :url_achat, :taille, :marque)
  end

end
