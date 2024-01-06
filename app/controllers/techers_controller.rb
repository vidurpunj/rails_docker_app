class TechersController < ApplicationController
  before_action :set_techer, only: %i[ show edit update destroy ]

  # GET /techers or /techers.json
  def index
    @techers = Techer.all
  end

  # GET /techers/1 or /techers/1.json
  def show
  end

  # GET /techers/new
  def new
    @techer = Techer.new
  end

  # GET /techers/1/edit
  def edit
  end

  # POST /techers or /techers.json
  def create
    @techer = Techer.new(techer_params)

    respond_to do |format|
      if @techer.save
        format.html { redirect_to techer_url(@techer), notice: "Techer was successfully created." }
        format.json { render :show, status: :created, location: @techer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @techer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techers/1 or /techers/1.json
  def update
    respond_to do |format|
      if @techer.update(techer_params)
        format.html { redirect_to techer_url(@techer), notice: "Techer was successfully updated." }
        format.json { render :show, status: :ok, location: @techer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @techer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techers/1 or /techers/1.json
  def destroy
    @techer.destroy

    respond_to do |format|
      format.html { redirect_to techers_url, notice: "Techer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techer
      @techer = Techer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def techer_params
      params.require(:techer).permit(:name, :age)
    end
end
