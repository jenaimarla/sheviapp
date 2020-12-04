class ThemesController < ApplicationController

  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
     @order_poster = OrderPoster.new
  end

  def new
    @poster = Poster.find(params[:poster_id])
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    @poster = Poster.find(params[:poster_id])
    @theme.poster = @poster
    @theme.save
    redirect_to poster_path(@poster)
  end

  def edit
    @theme = Theme.find(params[:id])
  end

  def update
    @theme = Theme.find(params[:id])
    if @theme.update(theme_params)
      redirect_to poster_path
    else
      render :edit
    end
  end

  def destroy
    @theme = Theme.find(params[:id])
    @theme.destroy
    redirect_to posters_path(@theme.poster)
  end

  private

  def theme_params
    params.require(:theme).permit(:title, :description, :information, :pre_order, :price_a1, :price_a2, :illustration)
  end
end

