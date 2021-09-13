require "application_system_test_case"

class ProjectBugsTest < ApplicationSystemTestCase
  setup do
    @project_bug = project_bugs(:one)
  end

  test "visiting the index" do
    visit project_bugs_url
    assert_selector "h1", text: "Project Bugs"
  end

  test "creating a Project bug" do
    visit project_bugs_url
    click_on "New Project Bug"

    fill_in "Deadline", with: @project_bug.deadline
    fill_in "Title", with: @project_bug.title
    fill_in "Type", with: @project_bug.type
    click_on "Create Project bug"

    assert_text "Project bug was successfully created"
    click_on "Back"
  end

  test "updating a Project bug" do
    visit project_bugs_url
    click_on "Edit", match: :first

    fill_in "Deadline", with: @project_bug.deadline
    fill_in "Title", with: @project_bug.title
    fill_in "Type", with: @project_bug.type
    click_on "Update Project bug"

    assert_text "Project bug was successfully updated"
    click_on "Back"
  end

  test "destroying a Project bug" do
    visit project_bugs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project bug was successfully destroyed"
  end
end
