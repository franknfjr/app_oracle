defmodule AppOracle.MixProject do
  use Mix.Project

  def project do
    [
      app: :app_oracle,
      version: "0.1.0",
      elixir: "~> 1.13",
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
      {:jamdb_oracle, "~> 0.4.12"},
    ]
  end
end
