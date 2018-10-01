defmodule Dictionary.Application do
  use Application

  def start(_type, _args) do
    Dictionary.Word.start_link()
  end

end
