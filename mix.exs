defmodule Membrane.Element.Lame.Mixfile do
  use Mix.Project

  def project do
    [app: :membrane_element_lame,
     compilers: ["membrane.compile.c"] ++ Mix.compilers,
     version: "0.1.0",
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     description: "Membrane Multimedia Framework (Lame Element)",
     maintainers: ["Filip Abramowicz"],
     licenses: ["LGPL"],
     name: "Membrane Element: Lame",
     source_url: "https://bitbucket.org/radiokit/membrane-element-lame",
     preferred_cli_env: [espec: :test],
     deps: deps()]
  end

  def application do
    [applications: [
      :membrane_core
    ], mod: {Membrane.Element.Lame, []}]
  end

  defp elixirc_paths(_),     do: ["lib",]

  defp deps do
    [
      {:membrane_core, git: "git@bitbucket.org:radiokit/membrane-core.git"},
      {:membrane_caps_audio_raw, git: "git@bitbucket.org:radiokit/membrane-caps-audio-raw.git"},
      {:membrane_common_c, git: "git@bitbucket.org:radiokit/membrane-common-c.git"},
      {:espec, "~> 1.1.2", only: :test},
    ]
  end
end