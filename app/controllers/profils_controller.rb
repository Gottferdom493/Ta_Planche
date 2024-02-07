class ProfilsController < ApplicationController
  before_action :set_profil, only: [:show, :edit, :update, :destroy]

  def index
    @profils = Profil.all
    # @item = Item.find(params[:item_id])
  end

  def show
    @profil = current_user.profil
    authorize @profil

    @items = current_user.items

    @user = current_user
    # @item = current_user.items.find(params[:id]) # Ajoutez cette ligne pour récupérer l'item associé
  end

  def new
    @profil = Profil.new
    authorize @profil
  end

  def create
    @profil = Profil.new(profil_params)
    authorize @profil

    @profil.user = current_user
    if @profil.save
      redirect_to profil_path(@profil)
    else
      render :new
      puts @profil.errors.full_messages
    end
  end


  def edit
    @profil = Profil.find(params[:id])
    authorize @profil
  end

  def update
    @profil = Profil.find(params[:id])
    authorize @profil

    @profil.user = current_user
    @profil.update(profil_params)
    redirect_to profil_path
  end

  def destroy
    @profil = Profil.find(params[:id])
    authorize @profil

    @profil.destroy
    redirect_to profils_path
  end

  private

  def set_item

  end

  def set_profil
    if params[:id].present?
      @profil = Profil.find(params[:id])
    else
      @profil = Profil.new
    end
    # @profil = Profil.find(params[:id])
    # redirect_to root_path, alert: "Profil non trouvé" unless @profil
  end

  def profil_params
    params.require(:profil).permit(:nom, :prenom, :age, :email, :img_profil, :date_naissance)
  end


end
