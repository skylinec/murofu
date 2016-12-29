require 'test_helper'

class PostThreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic = post_threads(:one)
  end

  test "should get index" do
    get post_threads_url, as: :json
    assert_response :success
  end

  test "should create @topic" do
    assert_difference('Topic.count') do
      post post_threads_url, params: {topic: {post_id: @topic.post_id, post_type: @topic.post_type } }, as: :json
    end

    assert_response 201
  end

  test "should show @topic" do
    get post_thread_url(@topic), as: :json
    assert_response :success
  end

  test "should update @topic" do
    patch post_thread_url(@topic), params: {topic: {post_id: @topic.post_id, post_type: @topic.post_type } }, as: :json
    assert_response 200
  end

  test "should destroy @topic" do
    assert_difference('Topic.count', -1) do
      delete post_thread_url(@topic), as: :json
    end

    assert_response 204
  end
end
