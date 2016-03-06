defmodule MnemonicSlugsTest do
  use ExUnit.Case, async: true

  test "generate_slug/0" do
    s = MnemonicSlugs.generate_slug
    assert is_binary(s)
    assert String.contains?(s, "-")
  end

  test "generate_slug/1" do
    s = MnemonicSlugs.generate_slug(10)
    assert is_binary(s)
    assert String.contains?(s, "-")
    assert length(String.split(s, "-")) == 10
  end
end
