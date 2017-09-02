require 'test_helper'

class NotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notum = nota(:one)
  end

  test "should get index" do
    get nota_url, as: :json
    assert_response :success
  end

  test "should create notum" do
    assert_difference('Notum.count') do
      post nota_url, params: { notum: { fecha: @notum.fecha, nota: @notum.nota, titulo: @notum.titulo } }, as: :json
    end

    assert_response 201
  end

  test "should show notum" do
    get notum_url(@notum), as: :json
    assert_response :success
  end

  test "should update notum" do
    patch notum_url(@notum), params: { notum: { fecha: @notum.fecha, nota: @notum.nota, titulo: @notum.titulo } }, as: :json
    assert_response 200
  end

  test "should destroy notum" do
    assert_difference('Notum.count', -1) do
      delete notum_url(@notum), as: :json
    end

    assert_response 204
  end
end
