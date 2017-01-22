defmodule BulletinBoard.CommentController do
  use BulletinBoard.Web, :controller
  alias BulletinBoard.Comment

  # def index(conn, _params) do
  #   topics = Repo.all(Topic)
  #   render conn, "index.html", comments: comments
  # end

  # def new(conn, _params) do
    # changeset = Topic.changeset(%Topic{})
    # render conn, "new.html", changeset: changeset
  # end

  def create(conn, %{"topic" => topic_params}) do
  # def create(conn) do
  #   changeset = Topic.changeset(%Topic{}, topic_params)
  #   case Repo.insert(changeset) do
  #     {:ok, topic} ->
  #       conn
  #       |> put_flash(:info, "#{topic.name}を作成しました")
  #       |> redirect(to: topic_path(conn, :index))
 
  #     {:error, changeset} ->
  #       render(conn, "new.html", changeset: changeset)
  #   end
  end

  # def show(conn, %{"id" => id}) do
  #   topic = Repo.get(Topic, id)
  #   render conn, "show.html", topic: topic
  # end

end
