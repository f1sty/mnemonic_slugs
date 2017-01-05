defmodule MnemonicSlugsTest.WordlistTest do
  use ExUnit.Case, async: true

  test "get_word/0" do
    word = MnemonicSlugs.Wordlist.get_word
    assert is_binary(word)
    assert String.length(word) >= 4 && String.length(word) <= 7
  end

  test "get_words/1" do
    words = MnemonicSlugs.Wordlist.get_words(3)
    assert length(words) == 3
  end
end
