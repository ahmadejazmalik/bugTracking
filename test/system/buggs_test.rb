require "application_system_test_case"

class BuggsTest < ApplicationSystemTestCase
  setup do
    @bugg = buggs(:one)
  end

  test "visiting the index" do
    visit buggs_url
    assert_selector "h1", text: "Buggs"
  end

  test "creating a Bugg" do
    visit buggs_url
    click_on "New Bugg"

    fill_in "Deadline", with: @bugg.deadline
    fill_in "Title", with: @bugg.title
    fill_in "Type", with: @bugg.type
    click_on "Create Bugg"

    assert_text "Bugg was successfully created"
    click_on "Back"
  end

  test "updating a Bugg" do
    visit buggs_url
    click_on "Edit", match: :first

    fill_in "Deadline", with: @bugg.deadline
    fill_in "Title", with: @bugg.title
    fill_in "Type", with: @bugg.type
    click_on "Update Bugg"

    assert_text "Bugg was successfully updated"
    click_on "Back"
  end

  test "destroying a Bugg" do
    visit buggs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bugg was successfully destroyed"
  end
end
