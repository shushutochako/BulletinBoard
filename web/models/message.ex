defmodule BulletinBoard.Message do
  use BulletinBoard.Web, :model
 
  schema "messages" do
    field :content, :string
 
    timestamps()
  end 
  @required_fields ~w(content)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:content, min: 1, max: 500)
  end

end 