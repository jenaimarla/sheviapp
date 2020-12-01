class PagesController < ApplicationController
  def about
  end


  def home
  end

  def shop
    @images = Image.all
    @themes = Theme.all
  end


end



