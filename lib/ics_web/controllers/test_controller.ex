defmodule IcsWeb.TestController do
  use IcsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

end
