class ThemeInterestsController < ApplicationController
  before_action :set_theme_interest, only: [:show, :edit, :update, :destroy]

  # GET /theme_interests
  # GET /theme_interests.json
  def index
    @theme_interests = ThemeInterest.all
  end

  # GET /theme_interests/1
  # GET /theme_interests/1.json
  def show
  end

  # GET /theme_interests/new
  def new
    @theme_interest = ThemeInterest.new
  end

  # GET /theme_interests/1/edit
  def edit
  end

  # POST /theme_interests
  # POST /theme_interests.json
  def create
    @theme_interest = ThemeInterest.new(theme_interest_params)

    respond_to do |format|
      if @theme_interest.save
        format.html { redirect_to @theme_interest, notice: 'Theme interest was successfully created.' }
        format.json { render :show, status: :created, location: @theme_interest }
      else
        format.html { render :new }
        format.json { render json: @theme_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theme_interests/1
  # PATCH/PUT /theme_interests/1.json
  def update
    respond_to do |format|
      if @theme_interest.update(theme_interest_params)
        format.html { redirect_to @theme_interest, notice: 'Theme interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme_interest }
      else
        format.html { render :edit }
        format.json { render json: @theme_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theme_interests/1
  # DELETE /theme_interests/1.json
  def destroy
    @theme_interest.destroy
    respond_to do |format|
      format.html { redirect_to theme_interests_url, notice: 'Theme interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_interest
      @theme_interest = ThemeInterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme_interest_params
      params.require(:theme_interest).permit(:name, :description)
    end
end
