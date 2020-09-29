defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.Changeset
  alias Discuss.Topic

  schema "topics" do
    field :title, :string

    timestamps()
  end

  def changeset(%Topic{} = topic, attrs \\ %{}) do
    topic
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
