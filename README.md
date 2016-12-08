# Mnemonic Slugs

Mnemonic Slugs is an Elixir library that generates easy to remember slugs. It uses a 
word list curated by Oren Tirosh. The original site and word list can be found [here](http://web.archive.org/web/20100105040244/http://tothink.com/mnemonic/index.html).

## Installation

Add mnemonic_slugs to your list of dependencies in `mix.exs`:

```
def deps do
  [{:mnemonic_slugs, "~> 0.0.2"}]
end
```

and update your dependencies with `mix deps.get`.

## Usage

You can generate slugs two ways:

```
  iex> MnemonicSlugs.generate_slug
  "aurora-bermuda"

  iex> MnemonicSlugs.generate_slug(10)
  "karate-textile-jungle-patrol-veteran-clone-nerve-stone-soviet-sting"
```

[Full Documentation](https://hexdocs.pm/mnemonic_slugs/MnemonicSlugs.html) is at HexDocs.
