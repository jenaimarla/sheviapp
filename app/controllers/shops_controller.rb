class ShopsController < ApplicationController

  def index
    @images = Image.all
    @themes = Theme.all
  end
end
