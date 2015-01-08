require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { address: @member.address, age_group: @member.age_group, coffee: @member.coffee, committee_member: @member.committee_member, data_collection: @member.data_collection, email: @member.email, first_name: @member.first_name, general: @member.general, general_help: @member.general_help, home_telephone_number: @member.home_telephone_number, last_name: @member.last_name, mobile_telephone_number: @member.mobile_telephone_number, online_and_email: @member.online_and_email, painting_sessions: @member.painting_sessions, picture_hanging: @member.picture_hanging, portering: @member.portering, post: @member.post, post_code: @member.post_code, projector: @member.projector, stewarding: @member.stewarding, term_address: @member.term_address, term_post_code: @member.term_post_code, title: @member.title, website: @member.website, website_social_media: @member.website_social_media }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    put :update, id: @member, member: { address: @member.address, age_group: @member.age_group, coffee: @member.coffee, committee_member: @member.committee_member, data_collection: @member.data_collection, email: @member.email, first_name: @member.first_name, general: @member.general, general_help: @member.general_help, home_telephone_number: @member.home_telephone_number, last_name: @member.last_name, mobile_telephone_number: @member.mobile_telephone_number, online_and_email: @member.online_and_email, painting_sessions: @member.painting_sessions, picture_hanging: @member.picture_hanging, portering: @member.portering, post: @member.post, post_code: @member.post_code, projector: @member.projector, stewarding: @member.stewarding, term_address: @member.term_address, term_post_code: @member.term_post_code, title: @member.title, website: @member.website, website_social_media: @member.website_social_media }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
