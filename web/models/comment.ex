defmodule BulletinBoard.Comment do
  use BulletinBoard.Web, :model

  schema "comments" do
    field :content, :string
    belongs_to :topic, BulletinBoard.Topic

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
  end
end
