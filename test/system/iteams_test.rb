require "application_system_test_case"

class IteamsTest < ApplicationSystemTestCase
  setup do
    @iteam = iteams(:one)
  end

  test "visiting the index" do
    visit iteams_url
    assert_selector "h1", text: "Iteams"
  end

  test "creating a Iteam" do
    visit iteams_url
    click_on "New Iteam"

    fill_in "Color", with: @iteam.color
    fill_in "Description", with: @iteam.description
    fill_in "Name", with: @iteam.name
    fill_in "Price", with: @iteam.price
    fill_in "Quantity", with: @iteam.quantity
    click_on "Create Iteam"

    assert_text "Iteam was successfully created"
    click_on "Back"
  end

  test "updating a Iteam" do
    visit iteams_url
    click_on "Edit", match: :first

    fill_in "Color", with: @iteam.color
    fill_in "Description", with: @iteam.description
    fill_in "Name", with: @iteam.name
    fill_in "Price", with: @iteam.price
    fill_in "Quantity", with: @iteam.quantity
    click_on "Update Iteam"

    assert_text "Iteam was successfully updated"
    click_on "Back"
  end

  test "destroying a Iteam" do
    visit iteams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Iteam was successfully destroyed"
  end
end
