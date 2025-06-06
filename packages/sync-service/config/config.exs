import Config

if Mix.target() == Electric.MixProject.telemetry_target() do
  # Sentry's source-context-related options need to be set in compile-time config files
  # cf. https://hexdocs.pm/sentry/Mix.Tasks.Sentry.PackageSourceCode.html
  config :sentry,
    enable_source_code_context: true,
    root_source_code_paths: [File.cwd!()]
end

config :electric,
  start_in_library_mode: Mix.env() == :test
