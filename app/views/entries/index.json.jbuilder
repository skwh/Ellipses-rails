json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :author, :body
  json.url entry_url(entry, format: :json)
end
