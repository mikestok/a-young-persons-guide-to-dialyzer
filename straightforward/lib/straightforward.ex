defmodule Straightforward do
  def string_to_date(date_string) do
    date_string
    |> Timex.parse("{YYYY}-{0M}-{D}")
    |> DateTime.to_date()
  end
end
