require 'test_helper'

class OfficialPhotosControllerTest < ActionController::TestCase
  setup do
    @official_photo = official_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:official_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create official_photo" do
    assert_difference('OfficialPhoto.count') do
      post :create, official_photo: { description: @official_photo.description, title: @official_photo.title }
    end

    assert_redirected_to official_photo_path(assigns(:official_photo))
  end

  test "should show official_photo" do
    get :show, id: @official_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @official_photo
    assert_response :success
  end

  test "should update official_photo" do
    patch :update, id: @official_photo, official_photo: { description: @official_photo.description, title: @official_photo.title }
    assert_redirected_to official_photo_path(assigns(:official_photo))
  end

  test "should destroy official_photo" do
    assert_difference('OfficialPhoto.count', -1) do
      delete :destroy, id: @official_photo
    end

    assert_redirected_to official_photos_path
  end
end
