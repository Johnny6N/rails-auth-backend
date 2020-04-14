require 'test_helper'

class CeusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ceu = ceus(:one)
  end

  test "should get index" do
    get ceus_url
    assert_response :success
  end

  test "should get new" do
    get new_ceu_url
    assert_response :success
  end

  test "should create ceu" do
    assert_difference('Ceu.count') do
      post ceus_url, params: { ceu: { hours: @ceu.hours, instructor_name: @ceu.instructor_name, number: @ceu.number, provider_name: @ceu.provider_name, state: @ceu.state, title: @ceu.title } }
    end

    assert_redirected_to ceu_url(Ceu.last)
  end

  test "should show ceu" do
    get ceu_url(@ceu)
    assert_response :success
  end

  test "should get edit" do
    get edit_ceu_url(@ceu)
    assert_response :success
  end

  test "should update ceu" do
    patch ceu_url(@ceu), params: { ceu: { hours: @ceu.hours, instructor_name: @ceu.instructor_name, number: @ceu.number, provider_name: @ceu.provider_name, state: @ceu.state, title: @ceu.title } }
    assert_redirected_to ceu_url(@ceu)
  end

  test "should destroy ceu" do
    assert_difference('Ceu.count', -1) do
      delete ceu_url(@ceu)
    end

    assert_redirected_to ceus_url
  end
end
