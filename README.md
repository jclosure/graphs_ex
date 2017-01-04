# GraphsEx

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `graphs_ex` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:graphs_ex, "~> 0.1.0"}]
    end
    ```

  2. Ensure `graphs_ex` is started before your application:

    ```elixir
    def application do
      [applications: [:graphs_ex]]
    end
    ```

## Graph Representation
```
 ABC
A011
B101
C110
```
```
   A
 /   \
B --- C
```
```elixir
[{:b, :c}, {:a, :c}, {:a, :b}]
```
