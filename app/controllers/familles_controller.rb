class FamillesController < ApplicationController
  before_action :set_famille, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index #permet de donner les droit de visualisation seulement sur index et show.


  def index
    @famille = Famille.new
    @familles = Famille.all.includes(:items)

    # Filtrer pour le type de Famille
    if params[:filter].present?
      famille_ids = params[:filter][:familles]

      # Vérifier si l'option "Toutes les familles" est cochée
      if params[:filter][:toutes_les_familles] == "1"
        # Si l'option est cochée, ignorer tout autre filtre de famille et afficher toutes les familles
        @familles = Famille.all.includes(:items)
      elsif famille_ids.present?
        @familles = @familles.where(id: famille_ids)
      end

      if params[:filter][:min_price].present? && params[:filter][:max_price].present?
        min_price = params[:filter][:min_price].to_f
        max_price = params[:filter][:max_price].to_f

        # Filtrer les familles en fonction du prix des articles
        @familles = @familles.joins(:items).where(items: { price: min_price..max_price })

        # Filtrer par taille minimale
        if params[:filter][:min_size].present?
          @familles = @familles.joins(:items).where("items.size >= ?", params[:filter][:min_size])
        end

        # Filtrer par taille maximale
        if params[:filter][:max_size].present?
          @familles = @familles.joins(:items).where("items.size <= ?", params[:filter][:max_size])
        end
      end
    end

  end




  def show
  end

  def new
    @famille = Famille.new
    authorize @famille
  end

  def create
    @famille = Famille.new(famille_params)
    @famille.user = current_user
    if @famille.save
      redirect_to familles_path(@famille)
      authorize @famille
    else
      render :new
    end
  end

  def edit
    @famille = Famille.find(params[:id])
    authorize @famille
  end

  def update
    @famille = Famille.find(params[:id])
    @famille.user = current_user
    @famille.update(famille_params)
    redirect_to familles_path
    authorize @famille
  end

  def destroy
    @famille = Famille.find(params[:id])
    @famille.destroy
    redirect_to familles_path
    authorize @famille
  end

  private

  def set_famille
    @famille = Famille.find(params[:id])
  end

  def famille_params
    params.require(:famille).permit(:name, :info, :user_id, :photo_famille)
  end
end
