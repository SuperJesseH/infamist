class ListItemsController < ApplicationController
  def create
    @list_item = ListItem.all.find do |litem|
      litem.list_id == list_id: params[:list_item][:list_id] && litem.rank == rank: params[:list_item][:rank]
    end


    # ListItem.find_by(list_id: params[:list_item][list_id], rank: params[:list_item][:rank])

    byebug

    if !@list_item

      @list_item = ListItem.create(item_id: params[:list_item][:item_id], reason: params[:list_item][:reason], list_id: params[:list_item][:list_id], rank: params[:list_item][:rank])

    else

    end

     redirect_to edit_user_path(current_user)
  end
end
