json.array!(@notas_tecnicas) do |notas_tecnica|
  json.extract! notas_tecnica, :exit
  json.url notas_tecnica_url(notas_tecnica, format: :json)
end
