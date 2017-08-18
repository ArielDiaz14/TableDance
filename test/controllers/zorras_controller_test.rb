require 'test_helper'

class ZorrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zorra = zorras(:one)
  end

  test "should get index" do
    get zorras_url
    assert_response :success
  end

  test "should get new" do
    get new_zorra_url
    assert_response :success
  end

  test "should create zorra" do
    assert_difference('Zorra.count') do
      post zorras_url, params: { zorra: { edad: @zorra.edad, horas: @zorra.horas, nombre: @zorra.nombre, precio: @zorra.precio, tabledance: @zorra.tabledance } }
    end

    assert_redirected_to zorra_url(Zorra.last)
  end

  test "should show zorra" do
    get zorra_url(@zorra)
    assert_response :success
  end

  test "should get edit" do
    get edit_zorra_url(@zorra)
    assert_response :success
  end

  test "should update zorra" do
    patch zorra_url(@zorra), params: { zorra: { edad: @zorra.edad, horas: @zorra.horas, nombre: @zorra.nombre, precio: @zorra.precio, tabledance: @zorra.tabledance } }
    assert_redirected_to zorra_url(@zorra)
  end

  test "should destroy zorra" do
    assert_difference('Zorra.count', -1) do
      delete zorra_url(@zorra)
    end

    assert_redirected_to zorras_url
  end
end
