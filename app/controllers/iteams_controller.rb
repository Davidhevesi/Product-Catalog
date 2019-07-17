class IteamsController < ApplicationController
  before_action :set_iteam, only: [:show, :edit, :update, :destroy]

  # GET /iteams
  # GET /iteams.json
  def index
    @iteams = Iteam.all
    @iteam = Iteam.new
  end

  # GET /iteams/1
  # GET /iteams/1.json
  def show
  end

  # GET /iteams/new
  def new
    @iteam = Iteam.new
  end

  # GET /iteams/1/edit
  def edit
  end

  # POST /iteams
  # POST /iteams.json
  def create
    @iteam = Iteam.new(iteam_params)

    respond_to do |format|
      if @iteam.save
        format.html { redirect_to @iteam, notice: 'Iteam was successfully created.' }
        format.json { render :show, status: :created, location: @iteam }
      else
        format.html { render :new }
        format.json { render json: @iteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iteams/1
  # PATCH/PUT /iteams/1.json
  def update
    respond_to do |format|
      if @iteam.update(iteam_params)
        format.html { redirect_to @iteam, notice: 'Iteam was successfully updated.' }
        format.json { render :show, status: :ok, location: @iteam }
      else
        format.html { render :edit }
        format.json { render json: @iteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iteams/1
  # DELETE /iteams/1.json
  def destroy
    @iteam.destroy
    respond_to do |format|
      format.html { redirect_to iteams_url, notice: 'Iteam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iteam
      @iteam = Iteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iteam_params
      params.require(:iteam).permit(:name, :description, :price, :color, :quantity)
    end
end
