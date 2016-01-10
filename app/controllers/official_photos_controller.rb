class OfficialPhotosController < ApplicationController
  before_action :set_official_photo, only: [:show, :edit, :update, :destroy]

  # GET /official_photos
  # GET /official_photos.json
  def index
    @official_photos = OfficialPhoto.all
  end

  # GET /official_photos/1
  # GET /official_photos/1.json
  def show
  end

  # GET /official_photos/new
  def new
    @official_photo = OfficialPhoto.new
  end

  # GET /official_photos/1/edit
  def edit
  end

  # POST /official_photos
  # POST /official_photos.json
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

  # PATCH/PUT /official_photos/1
  # PATCH/PUT /official_photos/1.json
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

  # DELETE /official_photos/1
  # DELETE /official_photos/1.json
  def destroy
    @official_photo.destroy
    respond_to do |format|
      format.html { redirect_to official_photos_url, notice: 'Official photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_official_photo
      @official_photo = OfficialPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def official_photo_params
      params.require(:official_photo).permit(:title, :description)
    end
end
