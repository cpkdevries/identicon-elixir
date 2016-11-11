defmodule Identicon do
    def main(input) do
        # take input and pass it into hash_input as the first arg.
        input
        |> hash_input
    end

    def hash_input(input) do
        # first hash, then pass to :binary.bin_to_list
        :crypto.hash(:md5, input)
        |> :binary.bin_to_list
    end
end
