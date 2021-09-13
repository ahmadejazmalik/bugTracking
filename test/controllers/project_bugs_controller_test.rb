require "test_helper"

class ProjectBugsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_bug = project_bugs(:one)
  end

  test "should get index" do
    get project_bugs_url
    assert_response :success
  end

  test "should get new" do
    get new_project_bug_url
    assert_response :success
  end

  test "should create project_bug" do
    assert_difference('ProjectBug.count') do
      post project_bugs_url, params: { project_bug: { deadline: @project_bug.deadline, title: @project_bug.title, type: @project_bug.type } }
    end

    assert_redirected_to project_bug_url(ProjectBug.last)
  end

  test "should show project_bug" do
    get project_bug_url(@project_bug)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_bug_url(@project_bug)
    assert_response :success
  end

  test "should update project_bug" do
    patch project_bug_url(@project_bug), params: { project_bug: { deadline: @project_bug.deadline, title: @project_bug.title, type: @project_bug.type } }
    assert_redirected_to project_bug_url(@project_bug)
  end

  test "should destroy project_bug" do
    assert_difference('ProjectBug.count', -1) do
      delete project_bug_url(@project_bug)
    end

    assert_redirected_to project_bugs_url
  end
end
