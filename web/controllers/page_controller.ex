defmodule BulletinBoard.PageController do
  use BulletinBoard.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
