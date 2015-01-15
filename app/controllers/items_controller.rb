class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @items = Item.all
    respond_with(@items)
  end

  def show
    respond_with(@item)
  end

  def new
    @character = Character.find(params[:character_id])
    @item = Item.new
    @randItem = randItem
    respond_with(@item)
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to root_path
  end

  def update
    @item.update(item_params)
    respond_with(@item)
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  def randItem
    list = ["form_sword", "form_fullplate", "form_diamond", "form_card", "form_toys"]
    return list.sample
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.permit(:name, :kind, :att, :def, :worth, :character_id)
    end
end
