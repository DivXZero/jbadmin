class BananasController < ApplicationController
  before_action :set_banana, only: [:show, :edit, :update, :destroy]

  # GET /bananas
  def index
    @bananas = Banana.all
  end

  # GET /bananas/1
  def show
  end

  # GET /bananas/new
  def new
    @banana = Banana.new
  end

  # GET /bananas/1/edit
  def edit
  end

  # POST /bananas
  def create
    @banana = Banana.new(banana_params)

    if @banana.save
      redirect_to @banana, notice: 'Banana was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bananas/1
  def update
    if @banana.update(banana_params)
      redirect_to @banana, notice: 'Banana was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bananas/1
  def destroy
    @banana.destroy
    redirect_to bananas_url, notice: 'Banana was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banana
      @banana = Banana.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banana_params
      params.require(:banana).permit(:region)
    end
end
