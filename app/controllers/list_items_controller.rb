class ListItemsController < ApplicationController
  def create
    @my_items = current_user.list.items
    @list_item = ListItem.create(list_id: params)
     @my_items << @list_item
    redirect_to edit_user_path(current_user)
  end
end
