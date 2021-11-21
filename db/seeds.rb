puts "Cleaning database..."

User.destroy_all
Keyword.destroy_all

admin = User.new(email: 'fidenhan@gmail.com', password: "a9ght8")
admin.save!

puts "Generate 4 keywords..."

html = Keyword.new(
  title: 'Html',
  definition: 'Hypertext Markup Language, a standardized system for tagging text files to achieve font, colour, graphic, and hyperlink effects on World Wide Web pages.',
  image_url: '1B3lzKgEpe4C8TmZFdSN90_3o-E062TJr',
  source_url: 'https://en.wikipedia.org/wiki/HTML'
)
html.save!

css = Keyword.new(
  title: 'Css',
  definition: 'CSS is the acronym of “Cascading Style Sheets”. CSS is a computer language for laying out and structuring web pages (HTML or XML).',
  image_url: '1874uK35_g9R-l8BpfpQofvy1UDXWei1q',
  source_url: 'https://en.wikipedia.org/wiki/CSS'
)
css.save!

js = Keyword.new(
  title: 'Javascript',
  definition: 'Javacript (JS) is an object-oriented computer programming language commonly used to create interactive effects within web browsers.',
  image_url: '1xbFDLcogCvc1N9gnhTlPIIBl2JAvh82b',
  source_url: 'https://en.wikipedia.org/wiki/JavaScript'
)
js.save!

agile = Keyword.new(
  title: 'Agile',
  definition: 'Agile is a method of project management, used especially for software development, that is characterized by the division of tasks into short phases of work and frequent reassessment and adaptation of plans.',
  image_url: '1seQFRxlauB7iPIbvBki_kdwB-Dxxh6s7',
  source_url: 'https://en.wikipedia.org/wiki/Agile_software_development'
)
agile.save!
