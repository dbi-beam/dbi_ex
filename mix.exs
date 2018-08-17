defmodule DBI.Mixfile do
  use Mix.Project

  @version "1.1.5"

  def project do
    [app: :dbi_ex,
     version: @version,
     name: "DBI",
     description: "DataBase Interface for Elixir",
     package: package(),
     source_url: "https://github.com/dbi-beam/dbi_ex",
     elixir: "~> 1.6",
     compilers: Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     aliases: aliases()]
  end

  def application do
    [extra_applications: [],
     env: []]
  end

  defp deps do
    [{:dbi, "~> #{@version}"},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp package do
    [files: ["lib", "mix.exs", "mix.lock", "README*", "COPYING*"],
     maintainers: ["Manuel Rubio"],
     licenses: ["LGPL 2.1"],
     links: %{"GitHub" => "https://github.com/dbi-beam/dbi_ex"}]
  end

  defp aliases do
    [test: "test --no-start"]
  end
end