class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show] #permet de donner les droit de visualisation seulement sur index et show.

  def index
    @famille = Famille.find(params[:famille_id])
    @items = Item.where(famille: @famille)
  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end

  def new
    @famille = Famille.find(params[:famille_id])
    @item = Item.new
    authorize @item
  end

  def create
    @famille = Famille.find(params[:famille_id])
    @item = Item.create(item_params)
    @item.famille = @famille
    @item.user = current_user
    if @item.save
      redirect_to famille_item_path(@famille, @item)
      authorize @item
    else
      render :new
    end
  end

  def edit
    @famille = Famille.find(params[:famille_id])
    @item = Item.find(params[:id])
    authorize @item
  end

  def update
    @famille = Famille.find(params[:famille_id])
    @item = Item.find(params[:id])
    @item.user = current_user
    @item.update(item_params)
    redirect_to famille_item_path(@famille, @item)
    authorize @item
  end

  def destroy
    @item = Item.find(params[:id])
    redirect_to famille_items_path
    @item.destroy
    authorize @item
  end

  private

  def set_item
    @famille = Famille.find(params[:famille_id])
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :img_avatar, :photo_1, :photo_2, :photo_3, :url_img2, :url_img3, :url_achat, :taille, :marque, :detail, :user_id)
  end

end
