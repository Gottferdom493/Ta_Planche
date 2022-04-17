class FamillesController < ApplicationController
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
