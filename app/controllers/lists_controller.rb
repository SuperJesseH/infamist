class ListsController < ApplicationController

  def index
  end

  def show
  end

  def edit
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(user_id: current_user.id, description: params[:description])
    redirect_to edit_user_path(current_user)
  end



end
