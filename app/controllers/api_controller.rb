class ApiController < ApplicationController
  # GET /theme_interests
  # GET /theme_interests.json
  def index
    @theme_interests = ThemeInterest.all
    render json: @theme_interests
  end


  def gender
    @genders = Gender.all
    render json: @genders
  end
end
