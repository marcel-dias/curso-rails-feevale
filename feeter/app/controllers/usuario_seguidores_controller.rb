class UsuarioSeguidoresController < ApplicationController
  before_action :set_usuario_seguidor, only: [:show, :edit, :update, :destroy]

  # GET /usuario_seguidores
  # GET /usuario_seguidores.json
  def index
    @usuario_seguidores = UsuarioSeguidor.all
  end

  # GET /usuario_seguidores/1
  # GET /usuario_seguidores/1.json
  def show
  end

  # GET /usuario_seguidores/new
  def new
    @usuario_seguidor = UsuarioSeguidor.new
  end

  # GET /usuario_seguidores/1/edit
  def edit
  end

  # POST /usuario_seguidores
  # POST /usuario_seguidores.json
  def create
    @usuario_seguidor = UsuarioSeguidor.new(usuario_seguidor_params)

    respond_to do |format|
      if @usuario_seguidor.save
        format.html { redirect_to @usuario_seguidor, notice: 'Usuario seguidor was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_seguidor }
      else
        format.html { render :new }
        format.json { render json: @usuario_seguidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_seguidores/1
  # PATCH/PUT /usuario_seguidores/1.json
  def update
    respond_to do |format|
      if @usuario_seguidor.update(usuario_seguidor_params)
        format.html { redirect_to @usuario_seguidor, notice: 'Usuario seguidor was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_seguidor }
      else
        format.html { render :edit }
        format.json { render json: @usuario_seguidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_seguidores/1
  # DELETE /usuario_seguidores/1.json
  def destroy
    @usuario_seguidor.destroy
    respond_to do |format|
      format.html { redirect_to usuario_seguidores_url, notice: 'Usuario seguidor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_seguidor
      @usuario_seguidor = UsuarioSeguidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_seguidor_params
      params.require(:usuario_seguidor).permit(:seguidor_id, :seguido_id)
    end
end
