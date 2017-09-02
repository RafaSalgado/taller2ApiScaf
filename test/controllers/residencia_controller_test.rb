require 'test_helper'

class ResidenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @residencium = residencia(:one)
  end

  test "should get index" do
    get residencia_url, as: :json
    assert_response :success
  end

  test "should create residencium" do
    assert_difference('Residencium.count') do
      post residencia_url, params: { residencium: { estado: @residencium.estado, pisos: @residencium.pisos, tipo: @residencium.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show residencium" do
    get residencium_url(@residencium), as: :json
    assert_response :success
  end

  test "should update residencium" do
    patch residencium_url(@residencium), params: { residencium: { estado: @residencium.estado, pisos: @residencium.pisos, tipo: @residencium.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy residencium" do
    assert_difference('Residencium.count', -1) do
      delete residencium_url(@residencium), as: :json
    end

    assert_response 204
  end
end
