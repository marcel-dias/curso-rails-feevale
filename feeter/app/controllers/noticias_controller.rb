class NoticiasController < ApplicationController
  before_action :set_noticia, only: [:show, :edit, :update, :destroy]

  # GET /noticias
  # GET /noticias.json
  def index
    @noticias = Noticia.all
  end

  # GET /noticias/1
  # GET /noticias/1.json
  def show
  end

  # GET /noticias/new
  def new
    @noticia = Noticia.new
  end

  # GET /noticias/1/edit
  def edit
  end

  # POST /noticias
  # POST /noticias.json
  def create
    @noticia = Noticia.new(noticia_params)

    respond_to do |format|
      if @noticia.save
        format.html { redirect_to @noticia, notice: 'Noticia was successfully created.' }
        format.json { render :show, status: :created, location: @noticia }
      else
        format.html { render :new }
        format.json { render json: @noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noticias/1
  # PATCH/PUT /noticias/1.json
  def update
    respond_to do |format|
      if @noticia.update(noticia_params)
        format.html { redirect_to @noticia, notice: 'Noticia was successfully updated.' }
        format.json { render :show, status: :ok, location: @noticia }
      else
        format.html { render :edit }
        format.json { render json: @noticia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noticias/1
  # DELETE /noticias/1.json
  def destroy
    @noticia.destroy
    respond_to do |format|
      format.html { redirect_to noticias_url, notice: 'Noticia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noticia
      @noticia = Noticia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noticia_params
      params.require(:noticia).permit(:titulo, :conteudo, :autor, :tags)
    end
end
