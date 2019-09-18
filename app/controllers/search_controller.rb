class SearchController < ApplicationController
  def item_search
    @keywords = search_keyword_params
    @result = []
    @result += Item.where(user_id: current_user.id, author: @keywords)
    @result += Item.where(user_id: current_user.id, item_name: @keywords)
  end

  private

  def search_keyword_params
    params.require(:keyword).split()
  end
end
