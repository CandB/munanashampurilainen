class Reference < ActiveRecord::Base
  belongs_to :author
  belongs_to :in_proceeding
  belongs_to :publisher
end
