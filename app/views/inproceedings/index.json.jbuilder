json.array!(@inproceedings) do |inproceedings|
  json.extract! inproceedings, :id, :author, :title, :booktitle, :year
  json.url inproceedings_url(inproceedings, format: :json)
end
