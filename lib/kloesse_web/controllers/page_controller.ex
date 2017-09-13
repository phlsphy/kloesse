defmodule KloesseWeb.PageController do
  use KloesseWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
