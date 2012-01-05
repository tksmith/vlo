require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get how_it_works" do
    get :how_it_works
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get our__attorneys" do
    get :our__attorneys
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get services_fees" do
    get :services_fees
    assert_response :success
  end

end
