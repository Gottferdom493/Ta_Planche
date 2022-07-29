class FamillesController < ApplicationController
  before_action :set_famille, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index


  def index
    @familles = Famille.all
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
  end

  private

  def set_famille
    @famille = Famille.find(params[:id])
  end

  def famille_params
    params.require(:famille).permit(:name, :info, :user_id)
  end
end
