defmodule MnemonicSlugs do
  @moduledoc """
  MnemonicSlugs generates easy to remember slugs. It uses a word list curated
  by Oren Tirosh.

  The original site and list can be found at
  http://web.archive.org/web/20100105040244/http://tothink.com/mnemonic/index.html.

  ## Examples

  You can generate slugs two ways:

      iex> MnemonicSlugs.generate_slug
      "aurora-bermuda"

      iex> MnemonicSlugs.generate_slug(10)
      "karate-textile-jungle-patrol-veteran-clone-nerve-stone-soviet-sting"
  """

  @doc """
  Generates a default-length (two word) mnemonic slug.

      iex> MnemonicSlugs.generate_slug
      "aurora-bermuda"
  """
  @spec generate_slug() :: String.t
  def generate_slug, do: MnemonicSlugs.Generator.generate_slug

  @doc """
  Generates a mnemonic slug `count` words long.

      iex> MnemonicSlugs.generate_slug(10)
      "karate-textile-jungle-patrol-veteran-clone-nerve-stone-soviet-sting"
  """
  @spec generate_slug(count :: Integer.t) :: String.t
  def generate_slug(count), do: MnemonicSlugs.Generator.generate_slug(count)
end
