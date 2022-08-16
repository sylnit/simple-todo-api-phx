defmodule TodoList.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoList.Todos` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        completed_at: ~U[2022-08-15 11:11:00Z],
        content: "some content"
      })
      |> TodoList.Todos.create_item()

    item
  end
end
