defmodule MnemonicSlugs.Mixfile do
  use Mix.Project

  @version "0.0.2"

  def project do
    [app: :mnemonic_slugs,
     version: @version,
     elixir: "~> 1.2",
     description: description,
     package: package,
     name: "Mnemonic Slugs",
     source_url: "https://github.com/devshane/mnemonic_slugs",
     deps: deps]
  end

  defp deps do
    [{:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.12", only: :dev},
     {:mix_test_watch, "~> 0.2", only: :dev}]
  end

  defp description do
    """
    MnemonicSlugs is an Elixir library for generating memorable slugs.
    """
  end

  defp package do
    %{maintainers: ["Shane Thomas"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/devshane/mnemonic_slugs"}}
  end
end
