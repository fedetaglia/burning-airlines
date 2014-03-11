json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :flight, :user, :row, :column
  json.url reservation_url(reservation, format: :json)
end
