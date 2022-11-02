require "application_system_test_case"

class TraffisProjectsTest < ApplicationSystemTestCase
  setup do
    @traffis_project = traffis_projects(:one)
  end

  test "visiting the index" do
    visit traffis_projects_url
    assert_selector "h1", text: "Traffis projects"
  end

  test "should create traffis project" do
    visit traffis_projects_url
    click_on "New traffis project"

    fill_in "Description", with: @traffis_project.description
    fill_in "Title", with: @traffis_project.title
    click_on "Create Traffis project"

    assert_text "Traffis project was successfully created"
    click_on "Back"
  end

  test "should update Traffis project" do
    visit traffis_project_url(@traffis_project)
    click_on "Edit this traffis project", match: :first

    fill_in "Description", with: @traffis_project.description
    fill_in "Title", with: @traffis_project.title
    click_on "Update Traffis project"

    assert_text "Traffis project was successfully updated"
    click_on "Back"
  end

  test "should destroy Traffis project" do
    visit traffis_project_url(@traffis_project)
    click_on "Destroy this traffis project", match: :first

    assert_text "Traffis project was successfully destroyed"
  end
end
