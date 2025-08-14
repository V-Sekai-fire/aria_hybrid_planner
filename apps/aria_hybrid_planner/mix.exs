# SPDX-License-Identifier: MIT
# Copyright (c) 2025-present K. S. Ernest (iFire) Lee

defmodule AriaHybridPlanner.MixProject do
  use Mix.Project

  def project do
    [
      app: :aria_hybrid_planner,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      # Local umbrella apps
      {:aria_core, in_umbrella: true},
      {:aria_state, in_umbrella: true},
      {:aria_timeline, in_umbrella: true},
      {:aria_minizinc_executor, in_umbrella: true},
      {:aria_minizinc_goal, in_umbrella: true},
      {:aria_minizinc_stn, in_umbrella: true},

      # External dependencies
      {:jason, "~> 1.4"},
      {:libgraph, "~> 0.16"},
      {:porcelain, "~> 2.0"},
      {:timex, "~> 3.7"},
      {:telemetry, "~> 1.0"},

      # Test dependencies
      {:mox, "~> 1.0", only: :test},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end
end
