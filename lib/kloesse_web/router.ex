defmodule KloesseWeb.Router do
  use KloesseWeb, :router

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

  scope "/", KloesseWeb do
    pipe_through :browser # Use the default browser stack

    #get "/", PageController, :index
    get "/new", SignatureController, :new
    get "/new/pagi", SignatureController, :pagi

  end

  # Other scopes may use custom stacks.
  # scope "/api", KloesseWeb do
  #   pipe_through :api
  # end
end
