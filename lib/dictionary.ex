defmodule Dictionary do

  alias Dictionary.Word

  defdelegate random_word(), to: Word, as: :random

end
