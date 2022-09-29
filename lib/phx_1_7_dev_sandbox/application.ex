defmodule Phx17DevSandbox.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Phx17DevSandboxWeb.Telemetry,
      # Start the Ecto repository
      Phx17DevSandbox.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Phx17DevSandbox.PubSub},
      # Start the Endpoint (http/https)
      Phx17DevSandboxWeb.Endpoint
      # Start a worker by calling: Phx17DevSandbox.Worker.start_link(arg)
      # {Phx17DevSandbox.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phx17DevSandbox.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Phx17DevSandboxWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
