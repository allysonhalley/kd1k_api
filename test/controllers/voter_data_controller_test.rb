require 'test_helper'

class VoterDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voter_datum = voter_data(:one)
  end

  test "should get index" do
    get voter_data_url, as: :json
    assert_response :success
  end

  test "should create voter_datum" do
    assert_difference('VoterDatum.count') do
      post voter_data_url, params: { voter_datum: { number: @voter_datum.number, person_id: @voter_datum.person_id, section: @voter_datum.section, zone: @voter_datum.zone } }, as: :json
    end

    assert_response 201
  end

  test "should show voter_datum" do
    get voter_datum_url(@voter_datum), as: :json
    assert_response :success
  end

  test "should update voter_datum" do
    patch voter_datum_url(@voter_datum), params: { voter_datum: { number: @voter_datum.number, person_id: @voter_datum.person_id, section: @voter_datum.section, zone: @voter_datum.zone } }, as: :json
    assert_response 200
  end

  test "should destroy voter_datum" do
    assert_difference('VoterDatum.count', -1) do
      delete voter_datum_url(@voter_datum), as: :json
    end

    assert_response 204
  end
end
