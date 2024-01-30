class ProfilsController < ApplicationController


  def index
    @profils = Profil.all
    # @item = Item.find(params[:item_id])
  end

  def show
    @profil = Profil.find(params[:id])
    authorize @profil
  end

  def new
    @profil = Profil.new
    authorize @profil
  end

  def create
    @profil = Profil.new(profil_params)
    @profil.user = current_user
    authorize @profil
    if @profil.save
      redirect_to profil_path(@profil)
    else
      render :new
      puts @profil.errors.full_messages
    end
  end

  private

  def set_profil
    @profil = Profil.find(params[:id])
  end

  def profil_params
    params.require(:profil).permit(:nom, :prenom, :age, :email, :img_profil)
  end


end
