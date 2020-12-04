class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
    @order_photo = OrderPhoto.new
  end


  def new
    @photo = Photo.find(params[:photo_id])
    @image = Image.new
  end


  def create
    @image = Image.new(image_params)
    @photo = Photo.find(params[:photo_id])
    @image.photo = @photo
    @image.save
    redirect_to photo_path(@photo)
  end

  def edit
      @image = Image.find(params[:id])
    end

    def update
      @image = Image.find(params[:id])
      if @image.update(image_params)
        redirect_to photos_path
      else
        render :edit
      end
    end

    def destroy
      @image = Image.find(params[:id])
      @image.destroy
      redirect_to photos_path(@image.photo)
    end


  private

  def image_params
    params.require(:image).permit(:name, :information, :pre_order, :format1, :format2, :price_a1, :price_a2, :image)
  end
end
