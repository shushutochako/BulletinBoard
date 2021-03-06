defmodule BulletinBoard.Topic do
  use BulletinBoard.Web, :model
 
  schema "topics" do
    field :name, :string
    field :description, :string
    has_many :content, BulletinBoard.Comment
 
    timestamps
  end 
  @required_fields ~w(name description)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:name, min: 1, max: 20)
  end

end 