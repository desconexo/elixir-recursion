defmodule ListLengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "count list elements" do
      list1 = [1, 2, 3, 4, 8, 9, 6, 4, 3]
      list2 = [6, 8, 7, 9, 7]
      list3 = [20]

      list1_expected_response = 9
      list2_expected_response = 5
      list3_expected_response = 1

      assert ListLength.call(list1) == list1_expected_response
      assert ListLength.call(list2) == list2_expected_response
      assert ListLength.call(list3) == list3_expected_response
    end

    test "passing an empty list" do
      list = []

      expected_response = 0

      assert ListLength.call(list) == expected_response
    end
  end
end
