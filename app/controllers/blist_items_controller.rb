class BlistItemsController < ApplicationController
  before_action :set_blist_item, only: [:show, :edit, :update, :destroy]

  # GET /blist_items
  # GET /blist_items.json
  def index
    @blist_items = BlistItem.all
  end

  # GET /blist_items/1
  # GET /blist_items/1.json
  def show
  end

  # GET /blist_items/new
  def new
    @blist_item = BlistItem.new
  end

  # GET /blist_items/1/edit
  def edit
  end

  # POST /blist_items
  # POST /blist_items.json
  def create
    @blist_item = BlistItem.new(blist_item_params)

    respond_to do |format|
      if @blist_item.save
        format.html { redirect_to @blist_item, notice: 'Blist item was successfully created.' }
        format.json { render :show, status: :created, location: @blist_item }
      else
        format.html { render :new }
        format.json { render json: @blist_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blist_items/1
  # PATCH/PUT /blist_items/1.json
  def update
    respond_to do |format|
      if @blist_item.update(blist_item_params)
        format.html { redirect_to @blist_item, notice: 'Blist item was successfully updated.' }
        format.json { render :show, status: :ok, location: @blist_item }
      else
        format.html { render :edit }
        format.json { render json: @blist_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blist_items/1
  # DELETE /blist_items/1.json
  def destroy
    @blist_item.destroy
    respond_to do |format|
      format.html { redirect_to blist_items_url, notice: 'Blist item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blist_item
      @blist_item = BlistItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blist_item_params
      params.fetch(:blist_item, {})
    end
end
