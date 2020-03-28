class MigrantsController < ApplicationController
  before_action :set_migrant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]

  # GET /migrants
  # GET /migrants.json
  def index
    @migrants = Migrant.all
  end

  # GET /migrants/1
  # GET /migrants/1.json
  def show
  end

  # GET /migrants/new
  def new
    @migrant = Migrant.new
  end

  # GET /migrants/1/edit
  def edit
  end

  # POST /migrants
  # POST /migrants.json
  def create
    @migrant = Migrant.new(migrant_params)

    respond_to do |format|
      if @migrant.save
        format.html { redirect_to @migrant, notice: 'Migrant was successfully created.' }
        format.json { render :show, status: :created, location: @migrant }
      else
        format.html { render :new }
        format.json { render json: @migrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /migrants/1
  # PATCH/PUT /migrants/1.json
  def update
    respond_to do |format|
      if @migrant.update(migrant_params)
        format.html { redirect_to @migrant, notice: 'Migrant was successfully updated.' }
        format.json { render :show, status: :ok, location: @migrant }
      else
        format.html { render :edit }
        format.json { render json: @migrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /migrants/1
  # DELETE /migrants/1.json
  def destroy
    @migrant.destroy
    respond_to do |format|
      format.html { redirect_to migrants_url, notice: 'Migrant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_migrant
      @migrant = Migrant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def migrant_params
      params.require(:migrant).permit(:name, :aadhar_id, :employer_name, :local_residence, :state_id, :district_id, :panchayat_id, :can_speak_local_language, :has_labour_department_reached)
    end
end
