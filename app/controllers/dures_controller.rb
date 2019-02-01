class DuresController < ApplicationController
  before_action :set_dure, only: [:show, :edit, :update, :destroy]

  # GET /dures
  # GET /dures.json
  def index
    @dures = Dure.all
  end

  # GET /dures/1
  # GET /dures/1.json
  def show
  end

  # GET /dures/new
  def new
    @dure = Dure.new
  end

  # GET /dures/1/edit
  def edit
  end

  # POST /dures
  # POST /dures.json
  def create
    @dure = Dure.new(dure_params)

    respond_to do |format|
      if @dure.save
        format.html { redirect_to @dure, notice: 'Dure was successfully created.' }
        format.json { render :show, status: :created, location: @dure }
      else
        format.html { render :new }
        format.json { render json: @dure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dures/1
  # PATCH/PUT /dures/1.json
  def update
    respond_to do |format|
      if @dure.update(dure_params)
        format.html { redirect_to @dure, notice: 'Dure was successfully updated.' }
        format.json { render :show, status: :ok, location: @dure }
      else
        format.html { render :edit }
        format.json { render json: @dure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dures/1
  # DELETE /dures/1.json
  def destroy
    @dure.destroy
    respond_to do |format|
      format.html { redirect_to dures_url, notice: 'Dure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dure
      @dure = Dure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dure_params
      params.require(:dure).permit(:name, :activity, :address, :effective, :other)
    end
end
