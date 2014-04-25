json.array!(@incollections) do |incollection|
  json.extract! incollection, :id, :author, :title, :year, :booktitle, :publisher
  json.url incollection_url(incollection, format: :json)
end
