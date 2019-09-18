class Search < ApplicationRecord
  def author_search
    Item.where(user_id: current_user.id, author: @keywords)
  end

  def name_search
    Item.where(user_id: current_user.id, item_name: @keywords)
  end

end
