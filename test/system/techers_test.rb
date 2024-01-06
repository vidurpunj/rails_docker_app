require "application_system_test_case"

class TechersTest < ApplicationSystemTestCase
  setup do
    @techer = techers(:one)
  end

  test "visiting the index" do
    visit techers_url
    assert_selector "h1", text: "Techers"
  end

  test "should create techer" do
    visit techers_url
    click_on "New techer"

    fill_in "Age", with: @techer.age
    fill_in "Name", with: @techer.name
    click_on "Create Techer"

    assert_text "Techer was successfully created"
    click_on "Back"
  end

  test "should update Techer" do
    visit techer_url(@techer)
    click_on "Edit this techer", match: :first

    fill_in "Age", with: @techer.age
    fill_in "Name", with: @techer.name
    click_on "Update Techer"

    assert_text "Techer was successfully updated"
    click_on "Back"
  end

  test "should destroy Techer" do
    visit techer_url(@techer)
    click_on "Destroy this techer", match: :first

    assert_text "Techer was successfully destroyed"
  end
end
