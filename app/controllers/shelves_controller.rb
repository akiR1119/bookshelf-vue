class ShelvesController < ApplicationController
  before_action :signed_in_check
  before_action :user_setting, only: [:new, :create]

  def index
    @shelves = Shelf.where("user_id LIKE(?)", "1")
  end

  def new
    @shelf = Shelf.new
  end

  def create
    @shelf = Shelf.create(shelf_params)
  end

  def show
    @shelf = Shelf.find(params[:id])
    @items = @shelf.items
  end

  private

  def shelf_params
    params.require(:shelf).permit(:shelf_name, :shelf_img, :description).merge(user_id: @user[:id])
  end

  def signed_in_check
    redirect_to new_user_session_path unless user_signed_in?
  end

  def user_setting
    @user = User.new(id: 1)
  end
end