defmodule MlieLivebook.MixProject do
  use Mix.Project

  def project do
    [
      app: :mlie_livebook,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:livebook, "~> 0.14.0"},
      {:axon, "~> 0.6.1"},
      {:nx, "~> 0.7.3"},
      {:explorer, "~> 0.9.2"},
      {:kino, "~> 0.14.0"}
    ]
  end
end
