class ListItemsController < ApplicationController
  def create
    @list_item = ListItem.all.find do |litem|
      litem.list_id == params[:list_item][:list_id].to_i && litem.rank == params[:list_item][:rank].to_i
    end


    # ListItem.find_by(list_id: params[:list_item][list_id], rank: params[:list_item][:rank])

    # byebug

    if !@list_item

      @list_item = ListItem.create(item_id: params[:list_item][:item_id], reason: params[:list_item][:reason], list_id: params[:list_item][:list_id], rank: params[:list_item][:rank])

    else

      @list_item.update(item_id: params[:list_item][:item_id], reason: params[:list_item][:reason], list_id: params[:list_item][:list_id], rank: params[:list_item][:rank])

    end

     redirect_to edit_user_path(current_user)
  end
end
