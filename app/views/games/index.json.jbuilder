json.array!(@games) do |game|
  json.extract! game, :id, :next_turn, :status
  json.url game_url(game, format: :json)
end
