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

## Check out Digraph

[Using Digraph Elixir](https://docs.google.com/document/d/1UXHNjjEWeQZ0f8mSCu5urUUyJePuiuBi646pKc8wejE/edit?usp=sharing)

http://elixirsips.com/episodes/064_digraph.html

## Usage

```elixir
iex> GraphsEx.make_dag |> GraphsEx.ancestors

iex> GraphsEx.make_k3 |> GraphsEx.ancestors
```

## K3 Graph Representation
```
 ABC
A011
B101
C110
```
[![Image-alt](https://docs.google.com/drawings/d/1yhf7ccwS2ETb7AKRepdf6z62ScrZfw0OgdVGBoOvmew/pub?w=960&h=720)](https://docs.google.com/drawings/d/1yhf7ccwS2ETb7AKRepdf6z62ScrZfw0OgdVGBoOvmew/edit)

```elixir
[{:b, :c}, {:a, :c}, {:a, :b}]
```
## DAG Representation

[![Image-alt](https://docs.google.com/drawings/d/1JTNSCS4pL3ZOakNSGLdHHT8mFSuiZIL8QYVVmKlw00o/pub?w=960&h=720)](https://docs.google.com/drawings/d/1JTNSCS4pL3ZOakNSGLdHHT8mFSuiZIL8QYVVmKlw00o/edit)]

```elixir
[a: {:b, :c}, b: {:c, :d}, c: {:e}, e: {}]
```
