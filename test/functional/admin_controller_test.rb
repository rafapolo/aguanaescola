require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get escolas" do
    get :escolas
    assert_response :success
  end

  test "should get monitores" do
    get :monitores
    assert_response :success
  end

  test "should get coletas" do
    get :coletas
    assert_response :success
  end

end
