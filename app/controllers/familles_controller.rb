class FamillesController < ApplicationController

  skip_before_action :authenticate_user!, only: :index


  def index
    @familles = Famille.all
  end

  def new
    @famille = Famille.new
  end

  def create
    famille = Famille.create(famille_params)
    redirect_to familles_path(famille)

  end

  def edit
    @famille = Famille.find(params[:id])
  end

  def update
    @famille = Famille.find(params[:id])
    @famille.update(famille_params)
    redirect_to familles_path
  end

  def destroy
    @famille = Famille.find(params[:id])
    @famille.destroy
    redirect_to familles_path
  end

  private

  def famille_params
    params.require(:famille).permit(:name, :info)
  end
end
