defmodule MnemonicSlugsTest.Wordlist.WordsTest do
  use ExUnit.Case

  test "list/0" do
    assert length(MnemonicSlugs.Wordlist.Words.list) > 1000
  end
end
