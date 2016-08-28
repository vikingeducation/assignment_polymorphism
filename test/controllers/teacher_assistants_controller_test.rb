require 'test_helper'

class TeacherAssistantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_assistants_index_url
    assert_response :success
  end

end
