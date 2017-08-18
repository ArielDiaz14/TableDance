class ZorrasController < ApplicationController
  before_action :set_zorra, only: [:show, :edit, :update, :destroy]

  # GET /zorras
  # GET /zorras.json
  def index
    @zorras = Zorra.all
  end

  # GET /zorras/1
  # GET /zorras/1.json
  def show
  end

  # GET /zorras/new
  def new
    @zorra = Zorra.new
  end

  # GET /zorras/1/edit
  def edit
  end

  # POST /zorras
  # POST /zorras.json
  def create
    @zorra = Zorra.new(zorra_params)

    respond_to do |format|
      if @zorra.save
        format.html { redirect_to @zorra, notice: 'Zorra was successfully created.' }
        format.json { render :show, status: :created, location: @zorra }
      else
        format.html { render :new }
        format.json { render json: @zorra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zorras/1
  # PATCH/PUT /zorras/1.json
  def update
    respond_to do |format|
      if @zorra.update(zorra_params)
        format.html { redirect_to @zorra, notice: 'Zorra was successfully updated.' }
        format.json { render :show, status: :ok, location: @zorra }
      else
        format.html { render :edit }
        format.json { render json: @zorra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zorras/1
  # DELETE /zorras/1.json
  def destroy
    @zorra.destroy
    respond_to do |format|
      format.html { redirect_to zorras_url, notice: 'Zorra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def reportes
    @zorras = Zorra.all
    @objetosGuardadosEdad = @zorras.sort_by(&:edad)
    @objetosGuardadosPrecio = @zorras.sort_by(&:precio)
    @objetosGuardadosHoras = @zorras.sort_by(&:horas)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zorra
      @zorra = Zorra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zorra_params
      params.require(:zorra).permit(:nombre, :tabledance, :edad, :precio, :horas)
    end
end
