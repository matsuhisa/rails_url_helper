class OfficialPhotosController < ApplicationController
  before_action :set_official_photo, only: [:show, :edit, :update, :destroy]
  before_action :set_shop, only: [:index, :show]

  def index
    @official_photos = @shop.official_photos
  end

  def show
  end

  def new
    @official_photo = OfficialPhoto.new
  end

  def edit
  end

  def create
    @official_photo = OfficialPhoto.new(official_photo_params)

    respond_to do |format|
      if @official_photo.save
        format.html { redirect_to @official_photo, notice: 'Official photo was successfully created.' }
        format.json { render :show, status: :created, location: @official_photo }
      else
        format.html { render :new }
        format.json { render json: @official_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @official_photo.update(official_photo_params)
        format.html { redirect_to @official_photo, notice: 'Official photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @official_photo }
      else
        format.html { render :edit }
        format.json { render json: @official_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @official_photo.destroy
    respond_to do |format|
      format.html { redirect_to official_photos_url, notice: 'Official photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_shop
      @shop = Shop.find(params[:shop_id])
    end

    def set_official_photo
      @official_photo = OfficialPhoto.find(params[:id])
    end

    def official_photo_params
      params.require(:official_photo).permit(:title, :description)
    end
end
