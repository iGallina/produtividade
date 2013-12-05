class NotasTecnicasController < ApplicationController
  before_action :set_notas_tecnica, only: [:show, :edit, :update, :destroy]

  # GET /notas_tecnicas
  # GET /notas_tecnicas.json
  def index
    @notas_tecnicas = NotasTecnica.all
  end

  # GET /notas_tecnicas/1
  # GET /notas_tecnicas/1.json
  def show
  end

  # GET /notas_tecnicas/new
  def new
    @notas_tecnica = NotasTecnica.new
  end

  # GET /notas_tecnicas/1/edit
  def edit
  end

  # POST /notas_tecnicas
  # POST /notas_tecnicas.json
  def create
    @notas_tecnica = NotasTecnica.new(notas_tecnica_params)

    respond_to do |format|
      if @notas_tecnica.save
        format.html { redirect_to @notas_tecnica, notice: 'Notas tecnica was successfully created.' }
        format.json { render action: 'show', status: :created, location: @notas_tecnica }
      else
        format.html { render action: 'new' }
        format.json { render json: @notas_tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notas_tecnicas/1
  # PATCH/PUT /notas_tecnicas/1.json
  def update
    respond_to do |format|
      if @notas_tecnica.update(notas_tecnica_params)
        format.html { redirect_to @notas_tecnica, notice: 'Notas tecnica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @notas_tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notas_tecnicas/1
  # DELETE /notas_tecnicas/1.json
  def destroy
    @notas_tecnica.destroy
    respond_to do |format|
      format.html { redirect_to notas_tecnicas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notas_tecnica
      @notas_tecnica = NotasTecnica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notas_tecnica_params
      params.require(:notas_tecnica).permit(:exit)
    end
end
