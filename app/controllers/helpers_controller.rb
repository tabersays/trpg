class HelpersController < ApplicationController
  before_action :set_helper, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @helpers = Helper.all
    respond_with(@helpers)
  end

  def show
    respond_with(@helper)
  end

  def new
    @helper = Helper.new
    respond_with(@helper)
  end

  def edit
  end

  def create
    @helper = Helper.new(helper_params)
    @helper.save
    respond_with(@helper)
  end

  def update
    @helper.update(helper_params)
    respond_with(@helper)
  end

  def destroy
    @helper.destroy
    respond_with(@helper)
  end

  private
    def set_helper
      @helper = Helper.find(params[:id])
    end

    def helper_params
      params.require(:helper).permit(:name, :user_id)
    end
end
