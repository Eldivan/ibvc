class AdressesController < ApplicationController
  before_action :set_adress, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  # GET /adresses
  # GET /adresses.json
  def index
    @adresses = Adress.all
  end

  # GET /adresses/1
  # GET /adresses/1.json
  def show
  end

  # GET /adresses/new
  def new
    @adress = Adress.new
  end

  # GET /adresses/1/edit
  def edit
  end

  # POST /adresses
  # POST /adresses.json
  def create
    @adress = Adress.new(adress_params)

    respond_to do |format|
      if @adress.save
        format.html { redirect_to @adress, notice: 'Endereço incluido com sucesso:) .' }
        format.json { render :show, status: :created, location: @adress }
      else
        format.html { render :new }
        format.json { render json: @adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adresses/1
  # PATCH/PUT /adresses/1.json
  def update
    respond_to do |format|
      if @adress.update(adress_params)
        format.html { redirect_to @adress, notice: 'Endereço atualizado com sucesso:) .' }
        format.json { render :show, status: :ok, location: @adress }
      else
        format.html { render :edit }
        format.json { render json: @adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adresses/1
  # DELETE /adresses/1.json
  def destroy
    @adress.destroy
    respond_to do |format|
      format.html { redirect_to adresses_url, notice: 'Endereço excluido com sucesso :( .' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adress
      @adress = Adress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adress_params
      params.require(:adress).permit(:uf, :city, :neighborhood, :quartrain, :set, :block, :number, :townhouse, :user_id)
    end
end
