require "application_system_test_case"

class CatchupListsTest < ApplicationSystemTestCase
  setup do
    @catchup_list = catchup_lists(:one)
  end

  test "visiting the index" do
    visit catchup_lists_url
    assert_selector "h1", text: "Catchup Lists"
  end

  test "creating a Catchup list" do
    visit catchup_lists_url
    click_on "New Catchup List"

    fill_in "Description", with: @catchup_list.description
    fill_in "Title", with: @catchup_list.title
    click_on "Create Catchup list"

    assert_text "Catchup list was successfully created"
    click_on "Back"
  end

  test "updating a Catchup list" do
    visit catchup_lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @catchup_list.description
    fill_in "Title", with: @catchup_list.title
    click_on "Update Catchup list"

    assert_text "Catchup list was successfully updated"
    click_on "Back"
  end

  test "destroying a Catchup list" do
    visit catchup_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Catchup list was successfully destroyed"
  end
end
