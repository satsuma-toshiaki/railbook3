json.array!(@publishes) do |publish|
  json.extract! publish, :id, :publishname, :address, :cd
  json.url publish_url(publish, format: :json)
end
