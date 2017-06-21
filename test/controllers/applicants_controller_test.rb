require 'test_helper'

class ApplicantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant = applicants(:one)
  end

  test "should get index" do
    get applicants_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_url
    assert_response :success
  end

  test "should create applicant" do
    assert_difference('Applicant.count') do
      post applicants_url, params: { applicant: { address: @applicant.address, email: @applicant.email, employer: @applicant.employer, employername: @applicant.employername, employernum: @applicant.employernum, firstname: @applicant.firstname, income: @applicant.income, landlord: @applicant.landlord, landlordnum: @applicant.landlordnum, lastname: @applicant.lastname, telephone: @applicant.telephone } }
    end

    assert_redirected_to applicant_url(Applicant.last)
  end

  test "should show applicant" do
    get applicant_url(@applicant)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_url(@applicant)
    assert_response :success
  end

  test "should update applicant" do
    patch applicant_url(@applicant), params: { applicant: { address: @applicant.address, email: @applicant.email, employer: @applicant.employer, employername: @applicant.employername, employernum: @applicant.employernum, firstname: @applicant.firstname, income: @applicant.income, landlord: @applicant.landlord, landlordnum: @applicant.landlordnum, lastname: @applicant.lastname, telephone: @applicant.telephone } }
    assert_redirected_to applicant_url(@applicant)
  end

  test "should destroy applicant" do
    assert_difference('Applicant.count', -1) do
      delete applicant_url(@applicant)
    end

    assert_redirected_to applicants_url
  end
end
