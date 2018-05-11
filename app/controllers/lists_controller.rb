class ListsController < ApplicationController

  def index
  end

  def show
  end

  def edit
  end

  def create
    user = User.last
    @list = List.create(user_id: current_user.id, description: params[:description])
    byebug
    redirect_to edit_user_path(user)
  end



end
