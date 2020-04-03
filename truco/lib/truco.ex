defmodule Truco do
  alias Truco.Game

  @moduledoc """
  Documentation for `Truco`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Truco.hello()
      :world

  """
  def play do
    IO.puts("El juego a comenzado!\n\nTus cartas son las siguientes:")

    Game.create_deck()
    |> choose_card
  end

  def choose_card([
        %Truco.Player{card: card, score: tu_score} = a,
        %Truco.Player{score: op_score} = b
      ]) do
    {status, message} = check_score([a, b])

    case status do
      :ok ->
        IO.puts(message)

      _ ->
        list_of_cards = Enum.map(card, fn x -> "- #{x.name}\n" end)
        IO.puts(list_of_cards)
        index = IO.gets("Cual quieres elegir?\n(1,2 o 3 segun aplique)\n\nElijo la numero ")
        {selected_card, rest} = List.pop_at(card, String.to_integer(String.first(index)) - 1)
        %Truco.Player{card: op_cards} = b
        {op_selected, op_rest} = List.pop_at(op_cards, 0)

        compare([
          %Truco.Player{card: rest, selected: selected_card, score: tu_score},
          %Truco.Player{card: op_rest, selected: op_selected, score: op_score}
        ])
    end
  end

  def compare([
        %Truco.Player{score: tu_score, selected: %Truco.Card{magic: tu_magic, name: tu_card}} =
          tu_hand,
        %Truco.Player{score: op_score, selected: %Truco.Card{magic: op_magic, name: op_card}} =
          op_hand
      ]) do
    IO.puts("Elegiste la carta: #{tu_card}\n")
    IO.puts("Tu oponente eligio: #{op_card}\n")

    cond do
      tu_magic > op_magic ->
        a = tu_score + 1
        IO.puts("Ganaste el turno!\n\n")
        IO.puts("El score es:\n tu: #{a}\n oponente: #{op_score}\n")

        make_score({:win, [tu_hand, op_hand]})
        |> choose_card

      tu_magic < op_magic ->
        a = op_score + 1
        IO.puts("Perdiste el turno!\n\n")
        IO.puts("El score es:\n tu: #{tu_score}\n oponente: #{a}\n")

        make_score({:lose, [tu_hand, op_hand]})
        |> choose_card

      tu_magic == op_magic ->
        a = tu_score + 1
        b = op_score + 1
        IO.puts("Empataron el turno!\n\n")
        IO.puts("El score es:\n tu: #{a}\n oponente: #{b}\n")

        make_score({:tie, [tu_hand, op_hand]})
        |> choose_card
    end
  end

  def make_score(
        {status,
         [%Truco.Player{score: tu_score} = tu_hand, %Truco.Player{score: op_score} = op_hand]}
      ) do
    case status do
      :lose ->
        [tu_hand, Map.update(op_hand, :score, op_score, &(&1 + 1))]

      :win ->
        [Map.update(tu_hand, :score, tu_score, &(&1 + 1)), op_hand]

      :tie ->
        [
          Map.update(tu_hand, :score, tu_score, &(&1 + 1)),
          Map.update(op_hand, :score, op_score, &(&1 + 1))
        ]
    end
  end

  def check_score([
        %Truco.Player{score: tu_score} = _tu_hand,
        %Truco.Player{score: op_score} = _op_hand
      ]) do
    cond do
      tu_score == 3 and op_score <= 2 -> {:ok, "GANASTE!!!"}
      tu_score <= 2 and op_score == 3 -> {:ok, "PERDISTE!!!"}
      tu_score == 2 and op_score <= 1 -> {:ok, "GANASTE!!!"}
      tu_score <= 1 and op_score == 2 -> {:ok, "PERDISTE!!!"}
      true -> {:nook, ""}
    end
  end
end
