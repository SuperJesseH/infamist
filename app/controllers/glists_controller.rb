class GlistsController < ApplicationController
  before_action :set_glist, only: [:show, :edit, :update, :destroy]

  # GET /glists
  # GET /glists.json
  def index
    @glists = Glist.all
  end

  # GET /glists/1
  # GET /glists/1.json
  def show
  end

  # GET /glists/new
  def new
    @glist = Glist.new
  end

  # GET /glists/1/edit
  def edit
  end

  # POST /glists
  # POST /glists.json
  def create
    @glist = Glist.new(glist_params)

    respond_to do |format|
      if @glist.save
        format.html { redirect_to @glist, notice: 'Glist was successfully created.' }
        format.json { render :show, status: :created, location: @glist }
      else
        format.html { render :new }
        format.json { render json: @glist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glists/1
  # PATCH/PUT /glists/1.json
  def update
    respond_to do |format|
      if @glist.update(glist_params)
        format.html { redirect_to @glist, notice: 'Glist was successfully updated.' }
        format.json { render :show, status: :ok, location: @glist }
      else
        format.html { render :edit }
        format.json { render json: @glist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glists/1
  # DELETE /glists/1.json
  def destroy
    @glist.destroy
    respond_to do |format|
      format.html { redirect_to glists_url, notice: 'Glist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glist
      @glist = Glist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glist_params
      params.fetch(:glist, {})
    end
end
