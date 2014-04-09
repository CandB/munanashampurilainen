module BibtexOutput

  def to_bib
    entry = BibTeX::Entry.new(self.attributes)
    entry.type = self.class.name

    entry.to_s
  end

end