json.array!(@oks) do |ok|
  json.extract! ok, :id, :name
  json.url ok_url(ok, format: :json)
end
