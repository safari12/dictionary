defmodule Dictionary.Word do

  alias __MODULE__

  @me __MODULE__

  def start_link do
    Agent.start_link(&Word.list/0, name: @me)
  end

  def list do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!
    |> String.split(~r/\n/)
  end

  def random do
    Agent.get(@me, &Enum.random/1)
  end

end
