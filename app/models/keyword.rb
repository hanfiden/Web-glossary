class Keyword < ApplicationRecord
  validates :title, presence: true
  validates :definition, presence: true, length: { maximum: 250 }

  def image_url=(value)
    write_attribute(:image_url, value.gsub('https://drive.google.com/file/d/', '').gsub('/view?usp=sharing',''))
  end
end
