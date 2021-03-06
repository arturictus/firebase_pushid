defmodule FirebasePushid.Mixfile do
  use Mix.Project
  @github_url "https://github.com/arturictus/firebase_pushid"

  def project do
    [app: :firebase_pushid,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),

     # Hex
     description: "Generates a timestamp based id as Firebase does.",
     package: package(),

     # Docs
     name: "firebase_pushid",
     homepage_url: @github_url,
     docs: docs()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger],
     mod: {FirebasePushid.Application, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.18.3", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Artur Panach"],
      licenses: ["MIT"],
      files: ~w(mix.exs lib README.md),
      links: %{ "GitHub" => @github_url }
    ]
  end

  defp docs do
    [main: "FirebasePushid",
     source_url: @github_url,
     extras: ["README.md"]]
  end

end
