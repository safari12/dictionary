defmodule Dictionary.Word do

  def list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!
    |> String.split(~r/\n/)
  end

  def random(word_list) do
    word_list
    |> Enum.random
  end

end
