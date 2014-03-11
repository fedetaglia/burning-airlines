json.array!(@ariplanes) do |ariplane|
  json.extract! ariplane, :id, :name, :rows, :columns
  json.url ariplane_url(ariplane, format: :json)
end
