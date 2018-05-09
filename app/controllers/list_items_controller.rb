class ListItemsController < ApplicationController
  def create
     @list_item = ListItem.create(item_id: params[:list_item][:item_id], reason: params[:list_item][:reason], list_id: params[:list_item][:list_id], rank: params[:list_item][:rank])

     redirect_to edit_user_path(current_user)
  end
end
