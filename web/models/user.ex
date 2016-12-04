defmodule BulletinBoard.User do
  use BulletinBoard.Web, :model

  schema "users" do
    field :username, :string
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:username, :first_name, :last_name])
    |> validate_required([:username, :first_name, :last_name])
  end
end
