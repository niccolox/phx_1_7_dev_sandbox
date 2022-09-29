defmodule Phx17DevSandboxWeb.PageController do
  use Phx17DevSandboxWeb, :controller

  plug :put_layout, false when action in [:index]

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
