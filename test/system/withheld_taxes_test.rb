require "application_system_test_case"

class WithheldTaxesTest < ApplicationSystemTestCase
  setup do
    @withheld_tax = withheld_taxes(:one)
  end

  test "visiting the index" do
    visit withheld_taxes_url
    assert_selector "h1", text: "Withheld taxes"
  end

  test "should create withheld tax" do
    visit withheld_taxes_url
    click_on "New withheld tax"

    click_on "Create Withheld tax"

    assert_text "Withheld tax was successfully created"
    click_on "Back"
  end

  test "should update Withheld tax" do
    visit withheld_tax_url(@withheld_tax)
    click_on "Edit this withheld tax", match: :first

    click_on "Update Withheld tax"

    assert_text "Withheld tax was successfully updated"
    click_on "Back"
  end

  test "should destroy Withheld tax" do
    visit withheld_tax_url(@withheld_tax)
    click_on "Destroy this withheld tax", match: :first

    assert_text "Withheld tax was successfully destroyed"
  end
end
