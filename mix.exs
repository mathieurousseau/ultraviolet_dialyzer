defmodule UltravioletDialyzer.MixProject do
  use Mix.Project

  def project do
    [
      app: :ultraviolet_dialyzer,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [
        plt_add_apps: [:ex_unit, :mix]
      ],
      preferred_cli_env: [dialyzer: :test, test: :test]
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
      {:ultraviolet, "~> 0.1.0"},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false}
    ]
  end
end
