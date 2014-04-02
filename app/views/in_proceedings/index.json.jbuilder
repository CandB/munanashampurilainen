json.array!(@in_proceedings) do |in_proceeding|
  json.extract! in_proceeding, :id, :title, :booktitle, :year
  json.url in_proceeding_url(in_proceeding, format: :json)
end
