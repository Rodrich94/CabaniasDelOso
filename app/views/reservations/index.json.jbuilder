json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :from, :to, :pax, :client_id, :cabin_id, :state_id
  json.url reservation_url(reservation, format: :json)
end
