defmodule BulletinBoard.ContentTest do
  use BulletinBoard.ModelCase

  alias BulletinBoard.Content

  @valid_attrs %{content: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Content.changeset(%Content{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Content.changeset(%Content{}, @invalid_attrs)
    refute changeset.valid?
  end
end
