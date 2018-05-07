class BlistsController < ApplicationController
  before_action :set_blist, only: [:show, :edit, :update, :destroy]

  # GET /blists
  # GET /blists.json
  def index
    @blists = Blist.all
  end

  # GET /blists/1
  # GET /blists/1.json
  def show
  end

  # GET /blists/new
  def new
    @blist = Blist.new
  end

  # GET /blists/1/edit
  def edit
  end

  # POST /blists
  # POST /blists.json
  def create
    @blist = Blist.new(blist_params)

    respond_to do |format|
      if @blist.save
        format.html { redirect_to @blist, notice: 'Blist was successfully created.' }
        format.json { render :show, status: :created, location: @blist }
      else
        format.html { render :new }
        format.json { render json: @blist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blists/1
  # PATCH/PUT /blists/1.json
  def update
    respond_to do |format|
      if @blist.update(blist_params)
        format.html { redirect_to @blist, notice: 'Blist was successfully updated.' }
        format.json { render :show, status: :ok, location: @blist }
      else
        format.html { render :edit }
        format.json { render json: @blist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blists/1
  # DELETE /blists/1.json
  def destroy
    @blist.destroy
    respond_to do |format|
      format.html { redirect_to blists_url, notice: 'Blist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blist
      @blist = Blist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blist_params
      params.fetch(:blist, {})
    end
end
