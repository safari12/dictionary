defmodule Dictionary do

  alias Dictionary.Word

  defdelegate random_word(word_list), to: Word, as: :random
  defdelegate start, to: Word, as: :list

end
