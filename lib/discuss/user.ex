defmodule Discuss.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Discuss.User

  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string
    has_many :topics, Discuss.Topic

    timestamps()
  end

  def changeset(%User{} = user, attrs \\ %{}) do
    user
    |> cast(attrs, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end
end
