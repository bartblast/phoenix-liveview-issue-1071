defmodule LiveviewProblems.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      LiveviewProblemsWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: LiveviewProblems.PubSub},
      # Start the Endpoint (http/https)
      LiveviewProblemsWeb.Endpoint
      # Start a worker by calling: LiveviewProblems.Worker.start_link(arg)
      # {LiveviewProblems.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LiveviewProblems.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    LiveviewProblemsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
