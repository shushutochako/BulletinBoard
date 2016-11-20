defmodule BulletinBoard.TopicController do
  use BulletinBoard.Web, :controller
  alias BulletinBoard.Topic

  def index(conn, _params) do
    topics = Repo.all(Topic)
    render conn, "index.html", topics: topics
  end

  def new(conn, _params) do
    changeset = Topic.changeset(%Topic{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"topic" => topic_params}) do
    changeset = Topic.changeset(%Topic{}, topic_params)
    case Repo.insert(changeset) do
      {:ok, topic} ->
        conn
        |> put_flash(:info, "#{topic.name}を作成しました")
        |> redirect(to: topic_path(conn, :index))
 
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

end
