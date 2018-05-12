defmodule FirebasePushid.Mixfile do
  use Mix.Project

  def project do
    [app: :firebase_pushid,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     # Docs
     name: "firebase_pushid",
     source_url: "https://github.com/arturictus/firebase_pushid",
     homepage_url: "https://github.com/arturictus/firebase_pushid",
     docs: [main: "FirebasePushid",
            extras: ["README.md"]]]
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
end
