defmodule Straightforward do
  @doc """
  Parse a string containing a date (yyyy-mm-dd) and return a Date if it is
  valid. Raise an error if it is not valid.

      iex> Straightforward.string_to_date("2017-07-09")
      ~D[2017-07-09]
  """
  @spec string_to_date(String.t) :: Date.t | no_return
  def string_to_date(date_string) when is_binary(date_string) do
    date_string
    |> Timex.parse!("{YYYY}-{0M}-{D}")
    |> Timex.to_date()
  end
end
