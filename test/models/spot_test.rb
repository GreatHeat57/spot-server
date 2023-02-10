require "test_helper"

class SpotTest < ActiveSupport::TestCase
  test "should not save spot without title" do
    spot = Spot.new
    assert_not spot.save, "Saved the spot without a title"
  end

  test "should report error" do
    # some_undefined_variable is not defined elsewhere in the test case
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
