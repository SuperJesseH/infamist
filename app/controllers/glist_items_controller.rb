class GlistItemsController < ApplicationController
  before_action :set_glist_item, only: [:show, :edit, :update, :destroy]

  # GET /glist_items
  # GET /glist_items.json
  def index
    @glist_items = GlistItem.all
  end

  # GET /glist_items/1
  # GET /glist_items/1.json
  def show
  end

  # GET /glist_items/new
  def new
    @glist_item = GlistItem.new
  end

  # GET /glist_items/1/edit
  def edit
  end

  # POST /glist_items
  # POST /glist_items.json
  def create
    @glist_item = GlistItem.new(glist_item_params)

    respond_to do |format|
      if @glist_item.save
        format.html { redirect_to @glist_item, notice: 'Glist item was successfully created.' }
        format.json { render :show, status: :created, location: @glist_item }
      else
        format.html { render :new }
        format.json { render json: @glist_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glist_items/1
  # PATCH/PUT /glist_items/1.json
  def update
    respond_to do |format|
      if @glist_item.update(glist_item_params)
        format.html { redirect_to @glist_item, notice: 'Glist item was successfully updated.' }
        format.json { render :show, status: :ok, location: @glist_item }
      else
        format.html { render :edit }
        format.json { render json: @glist_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glist_items/1
  # DELETE /glist_items/1.json
  def destroy
    @glist_item.destroy
    respond_to do |format|
      format.html { redirect_to glist_items_url, notice: 'Glist item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glist_item
      @glist_item = GlistItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glist_item_params
      params.fetch(:glist_item, {})
    end
end
