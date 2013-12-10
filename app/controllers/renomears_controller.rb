class RenomearsController < ApplicationController
  before_action :set_renomear, only: [:show, :edit, :update, :destroy]

  # GET /renomears
  # GET /renomears.json
  def index
    @renomears = Renomear.all
  end

  # GET /renomears/1
  # GET /renomears/1.json
  def show
  end

  # GET /renomears/new
  def new
    @renomear = Renomear.new
  end

  # GET /renomears/1/edit
  def edit
  end

  # POST /renomears
  # POST /renomears.json
  def create
    @renomear = Renomear.new(renomear_params)

    respond_to do |format|
      if @renomear.save
        format.html { redirect_to @renomear, notice: 'Renomear was successfully created.' }
        format.json { render action: 'show', status: :created, location: @renomear }
      else
        format.html { render action: 'new' }
        format.json { render json: @renomear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renomears/1
  # PATCH/PUT /renomears/1.json
  def update
    respond_to do |format|
      if @renomear.update(renomear_params)
        format.html { redirect_to @renomear, notice: 'Renomear was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @renomear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renomears/1
  # DELETE /renomears/1.json
  def destroy
    @renomear.destroy
    respond_to do |format|
      format.html { redirect_to renomears_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renomear
      @renomear = Renomear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def renomear_params
      params.require(:renomear).permit(:tipo, :assunto, :data, :cprod, :sem_cprod, :mais_de_um_processo, :arquivo)
    end
end
