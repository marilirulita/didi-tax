require "test_helper"

class WithheldTaxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @withheld_tax = withheld_taxes(:one)
  end

  test "should get index" do
    get withheld_taxes_url
    assert_response :success
  end

  test "should get new" do
    get new_withheld_tax_url
    assert_response :success
  end

  test "should create withheld_tax" do
    assert_difference("WithheldTax.count") do
      post withheld_taxes_url, params: { withheld_tax: {  } }
    end

    assert_redirected_to withheld_tax_url(WithheldTax.last)
  end

  test "should show withheld_tax" do
    get withheld_tax_url(@withheld_tax)
    assert_response :success
  end

  test "should get edit" do
    get edit_withheld_tax_url(@withheld_tax)
    assert_response :success
  end

  test "should update withheld_tax" do
    patch withheld_tax_url(@withheld_tax), params: { withheld_tax: {  } }
    assert_redirected_to withheld_tax_url(@withheld_tax)
  end

  test "should destroy withheld_tax" do
    assert_difference("WithheldTax.count", -1) do
      delete withheld_tax_url(@withheld_tax)
    end

    assert_redirected_to withheld_taxes_url
  end
end
