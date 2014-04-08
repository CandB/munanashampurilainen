entry = BibTeX::Entry.new(@inproceedings.attributes)

entry.type = :inproceedings
entry.delete :updated_at
entry.delete :created_at
entry.delete :id

entry.to_s