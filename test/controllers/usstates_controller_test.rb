require 'test_helper'

class UsstatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usstate = usstates(:one)
  end

  test "should get index" do
    get usstates_url
    assert_response :success
  end

  test "should get new" do
    get new_usstate_url
    assert_response :success
  end

  test "should create usstate" do
    assert_difference('Usstate.count') do
      post usstates_url, params: { usstate: { conditions: @usstate.conditions, hours: @usstate.hours, link: @usstate.link, name: @usstate.name, periodicity: @usstate.periodicity } }
    end

    assert_redirected_to usstate_url(Usstate.last)
  end

  test "should show usstate" do
    get usstate_url(@usstate)
    assert_response :success
  end

  test "should get edit" do
    get edit_usstate_url(@usstate)
    assert_response :success
  end

  test "should update usstate" do
    patch usstate_url(@usstate), params: { usstate: { conditions: @usstate.conditions, hours: @usstate.hours, link: @usstate.link, name: @usstate.name, periodicity: @usstate.periodicity } }
    assert_redirected_to usstate_url(@usstate)
  end

  test "should destroy usstate" do
    assert_difference('Usstate.count', -1) do
      delete usstate_url(@usstate)
    end

    assert_redirected_to usstates_url
  end
end
