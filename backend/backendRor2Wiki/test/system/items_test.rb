require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Desc", with: @item.desc
    fill_in "Dlc", with: @item.dlc
    fill_in "Imageurl", with: @item.imageurl
    fill_in "Name", with: @item.name
    fill_in "Rarity", with: @item.rarity
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Desc", with: @item.desc
    fill_in "Dlc", with: @item.dlc
    fill_in "Imageurl", with: @item.imageurl
    fill_in "Name", with: @item.name
    fill_in "Rarity", with: @item.rarity
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
