require 'test_helper'

class MigrantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @migrant = migrants(:one)
  end

  test "should get index" do
    get migrants_url
    assert_response :success
  end

  test "should get new" do
    get new_migrant_url
    assert_response :success
  end

  test "should create migrant" do
    assert_difference('Migrant.count') do
      post migrants_url, params: { migrant: { employer_name: @migrant.employer_name, local_residence: @migrant.local_residence, name: @migrant.name } }
    end

    assert_redirected_to migrant_url(Migrant.last)
  end

  test "should show migrant" do
    get migrant_url(@migrant)
    assert_response :success
  end

  test "should get edit" do
    get edit_migrant_url(@migrant)
    assert_response :success
  end

  test "should update migrant" do
    patch migrant_url(@migrant), params: { migrant: { employer_name: @migrant.employer_name, local_residence: @migrant.local_residence, name: @migrant.name } }
    assert_redirected_to migrant_url(@migrant)
  end

  test "should destroy migrant" do
    assert_difference('Migrant.count', -1) do
      delete migrant_url(@migrant)
    end

    assert_redirected_to migrants_url
  end
end
