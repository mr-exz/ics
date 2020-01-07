defmodule IcsWeb.Router do
  use IcsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", IcsWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/test", TestController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", IcsWeb do
  #   pipe_through :api
  # end
end
