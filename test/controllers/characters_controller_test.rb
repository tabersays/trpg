require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { con: @character.con, dex: @character.dex, end: @character.end, ep: @character.ep, exp: @character.exp, hp: @character.hp, lv: @character.lv, min: @character.min, mp: @character.mp, name: @character.name, sol: @character.sol, spd: @character.spd, str: @character.str, user_id: @character.user_id }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    patch :update, id: @character, character: { con: @character.con, dex: @character.dex, end: @character.end, ep: @character.ep, exp: @character.exp, hp: @character.hp, lv: @character.lv, min: @character.min, mp: @character.mp, name: @character.name, sol: @character.sol, spd: @character.spd, str: @character.str, user_id: @character.user_id }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
