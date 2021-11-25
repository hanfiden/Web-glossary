class Keyword < ApplicationRecord
  validates :title, presence: true
  validates :definition, presence: true, length: { maximum: 250 }
end
