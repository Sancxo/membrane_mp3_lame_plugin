defmodule Membrane.Element.Lame.Mixfile do
  use Mix.Project

  def project do
    [
      app: :membrane_element_lame,
      compilers: ~w(bundlex.lib) ++ Mix.compilers(),
      version: "0.1.0",
      elixir: "~> 1.6",
      elixirc_paths: elixirc_paths(Mix.env()),
      description: "Membrane Multimedia Framework (Lame Element)",
      maintainers: ["Membrane Team"],
      licenses: ["Apache 2.0"],
      name: "Membrane Element: Lame",
      source_url: "https://github.com/membraneframework/membrane-element-lame",
      preferred_cli_env: [espec: :test, format: :test],
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [
        :membrane_core
      ],
      mod: {Membrane.Element.Lame, []}
    ]
  end

  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:membrane_core, git: "git@github.com:membraneframework/membrane-core.git"},
      {:membrane_caps_audio_raw,
       git: "git@github.com:membraneframework/membrane-caps-audio-raw.git"},
      {:membrane_caps_audio_mpeg,
       git: "git@github.com:membraneframework/membrane-caps-audio-mpeg.git"},
      {:membrane_common_c, git: "git@github.com:membraneframework/membrane-common-c.git"},
      {:bundlex, git: "git@github.com:radiokit/bundlex.git"},
      {:espec, "~> 1.5", only: :test}
    ]
  end
end
