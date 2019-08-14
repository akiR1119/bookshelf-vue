class ItemsController < ApplicationController
  before_action :user_setting, only: [:new, :create]
  #テスト時の記述。ユーザーログイン機能ができたらcurrent_userでidを取得する。
  
  def index
  end

  def new
    @item = Item.new
    @shelves = []
    Shelf.all.each{|shelf| @shelves << [shelf.shelf_name, shelf.id]}
  end

  def create
    Item.create(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:item_type, :item_name, :author, :shelf_id, :genre, :has_read, :lend_to).merge(user_id: @user[:id])
  end

  def user_setting
    @user = User.new(id: 1)
  end
end
