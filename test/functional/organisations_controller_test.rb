require 'test_helper'

class OrganisationsControllerTest < ActionController::TestCase
  setup do
    @organisation = organisations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organisations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organisation" do
    assert_difference('Organisation.count') do
      post :create, organisation: { org_addedby: @organisation.org_addedby, org_addresscity: @organisation.org_addresscity, org_addressline1: @organisation.org_addressline1, org_addressline2: @organisation.org_addressline2, org_addressline3: @organisation.org_addressline3, org_addresspostcode: @organisation.org_addresspostcode, org_contactname: @organisation.org_contactname, org_dateadded: @organisation.org_dateadded, org_description: @organisation.org_description, org_name: @organisation.org_name, org_phonenumber: @organisation.org_phonenumber, org_website: @organisation.org_website }
    end

    assert_redirected_to organisation_path(assigns(:organisation))
  end

  test "should show organisation" do
    get :show, id: @organisation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organisation
    assert_response :success
  end

  test "should update organisation" do
    put :update, id: @organisation, organisation: { org_addedby: @organisation.org_addedby, org_addresscity: @organisation.org_addresscity, org_addressline1: @organisation.org_addressline1, org_addressline2: @organisation.org_addressline2, org_addressline3: @organisation.org_addressline3, org_addresspostcode: @organisation.org_addresspostcode, org_contactname: @organisation.org_contactname, org_dateadded: @organisation.org_dateadded, org_description: @organisation.org_description, org_name: @organisation.org_name, org_phonenumber: @organisation.org_phonenumber, org_website: @organisation.org_website }
    assert_redirected_to organisation_path(assigns(:organisation))
  end

  test "should destroy organisation" do
    assert_difference('Organisation.count', -1) do
      delete :destroy, id: @organisation
    end

    assert_redirected_to organisations_path
  end
end
