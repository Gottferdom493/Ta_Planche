class ItemsController < ApplicationController

  def index
    @famille = Famille.find(params[:famille_id])
    @items = Item.where(famille: @famille)
  end

  def show
    @item = Item.find(params[:id])
  end


end
