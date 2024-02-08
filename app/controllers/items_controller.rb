class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show] #permet de donner les droits de visualisation seulement sur index et show.

  def index
    @famille = Famille.find(params[:famille_id])
    @items = Item.where(famille: @famille)
  end

  def show
    @items = Item.where(famille: @famille)
    @item = Item.find(params[:id])
    authorize @item

    @famille = @item.famille

    @items = Item.where(address: @item.address)
    @markers = @items.geocoded.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude
      }
    end
  end

  def new
    @famille = Famille.find(params[:famille_id])
    @item = Item.new
    @familles = Famille.all
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to famille_item_path(@item.famille, @item)
      authorize @item
    else
      @familles = Famille.all
      render :new
    end
  end

  def edit
    @famille = @item.famille
    @item = @famille.items.find(params[:id])
    @familles = Famille.all
    authorize @item
  end

  def update
    @famille = Famille.find(params[:famille_id])
    @item = Item.find(params[:id])
    @item.user = current_user
    authorize @item
    if @item.update(item_params)
      redirect_to profil_path(current_user.profil)
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    authorize @item
    # redirect_to famille_items_path
    @item.destroy
    redirect_to profil_path(current_user.profil), notice: "L'item a été supprimé avec succès."
  end

  private

  def set_item
    # @famille = Famille.find(params[:famille_id])
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :img_avatar, :photo_1, :photo_2, :photo_3, :url_img2, :url_img3, :url_achat,
    :taille, :marque, :detail, :user_id, :matiere, :address, :famille_id)
  end

end
