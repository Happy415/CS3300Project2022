require "test_helper"

class TraffisProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traffis_project = traffis_projects(:one)
  end

  test "should get index" do
    get traffis_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_traffis_project_url
    assert_response :success
  end

  test "should create traffis_project" do
    assert_difference("TraffisProject.count") do
      post traffis_projects_url, params: { traffis_project: { description: @traffis_project.description, title: @traffis_project.title } }
    end

    assert_redirected_to traffis_project_url(TraffisProject.last)
  end

  test "should show traffis_project" do
    get traffis_project_url(@traffis_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_traffis_project_url(@traffis_project)
    assert_response :success
  end

  test "should update traffis_project" do
    patch traffis_project_url(@traffis_project), params: { traffis_project: { description: @traffis_project.description, title: @traffis_project.title } }
    assert_redirected_to traffis_project_url(@traffis_project)
  end

  test "should destroy traffis_project" do
    assert_difference("TraffisProject.count", -1) do
      delete traffis_project_url(@traffis_project)
    end

    assert_redirected_to traffis_projects_url
  end
end
