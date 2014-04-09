ActionController::Renderers.add :bib do |obj, options|
  self.content_type = Mime::Type.lookup :bib
  self.response_body = obj.to_bib
end