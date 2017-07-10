defmodule StraightforwardTest do
  use ExUnit.Case
  doctest Straightforward

  describe "string_to_date" do
    test "raises a parse error for an illegal but 'valid looking' date" do
      assert_raise Timex.Parse.ParseError, fn ->
        Straightforward.string_to_date("2017-07-32")
      end
    end

    test "raises a parse error for an illegal date" do
      assert_raise Timex.Parse.ParseError, fn ->
        Straightforward.string_to_date("banana")
      end
    end
  end
end
