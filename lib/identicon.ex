defmodule Identicon do
  def main(input) do
    # take input and pass it into hash_input as the first arg.
    input
    |> hash_input
    |> pick_color
  end

  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}} # update Image struct.
  end

  def hash_input(input) do
    # first hash, then pass to :binary.bin_to_list
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
