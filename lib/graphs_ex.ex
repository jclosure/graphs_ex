defmodule GraphsEx do

  def make_k3 do
    k3 = [a: {:b, :c}, b: {:a, :c}, c: {:a, :b}]
  end

  def make_dag do
    dag = [a: {:b, :c}, b: {:c, :d}, c: {:e}, e: {}]
  end

  @doc """
  Least common ancestor algorithm

  Examples:
    iex> GraphsEx.make_dag |> GraphsEx.ancestors

    iex> GraphsEx.make_k3 |> GraphsEx.ancestors
  """
  def ancestors(graph) do

    graph
    |> Enum.map(fn({node, neighbors}) ->
      neighbors
      |> Tuple.to_list
      |> Enum.map(fn(child) -> {child, node} end)
    end)
    |> List.flatten
    |>(fn(nodes) ->
      {
         nodes |>
         Keyword.keys |>
         Enum.uniq, nodes
       }
    end).()
    |>(fn({keys, nodes}) ->
      keys
      |>Enum.map(fn(key) ->
        {
          key, nodes |>
          Keyword.get_values(key) |>
          List.to_tuple
        }
      end)
    end).()

  end

  def ancestors_stream(graph) do

    graph
    |> Stream.map(fn({node, neighbors}) ->
      neighbors
      |> Tuple.to_list
      |> Stream.map(fn(child) -> {child, node} end)
    end)
    |> Stream.flatten
    |>(fn(nodes) ->
      {
         nodes |>
         Keyword.keys |>
         Enum.uniq, nodes
       }
    end).()
    |>(fn({keys, nodes}) ->
      keys
      |>Stream.map(fn(key) ->
        {
          key, nodes |>
          Keyword.get_values(key) |>
          Stream.to_tuple
        }
      end)
    end).()

  end

end
