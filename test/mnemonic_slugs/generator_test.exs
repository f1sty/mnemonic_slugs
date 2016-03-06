defmodule MnemonicSlugsTest.GeneratorTest do
  use ExUnit.Case, async: true

  test "generate_slug/0" do
    s = MnemonicSlugs.Generator.generate_slug
    assert is_binary(s)
    assert String.contains?(s, "-")
    assert length(String.split(s, "-")) == 2
  end

  test "generate_slug/1" do
      s = MnemonicSlugs.Generator.generate_slug(12)
      assert is_binary(s)
      assert String.contains?(s, "-")
      assert length(String.split(s, "-")) == 12
  end
end
