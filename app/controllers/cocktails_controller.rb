class CocktailsController < ApplicationController

  def index
    @cocktail = Cocktail.new
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:id])
  end

  # def new
  #   @cocktail = Cocktail.new
  # end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    else
      @cocktails = Cocktail.all
      render :index
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def cocktail_params
      params.require(:cocktail).permit(:name, :picture)
    end
end