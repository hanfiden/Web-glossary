puts "Cleaning database..."

User.destroy_all
Keyword.destroy_all

admin = User.new(email: 'fidenhan@gmail.com', password: "a9ght8")
admin.save!

puts "Generate 2 keywords..."

html = Keyword.new(
  title: 'Html',
  definition: 'Hypertext Markup Language, a standardized system for tagging text files to achieve font, colour, graphic, and hyperlink effects on World Wide Web pages.',
  image_url: 'https://unsplash.com/photos/wUbNvDTsOIc',
  source_url: 'https://en.wikipedia.org/wiki/HTML'
)
html.save!

css = Keyword.new(
  title: 'Css',
  definition: 'CSS is the acronym of “Cascading Style Sheets”. CSS is a computer language for laying out and structuring web pages (HTML or XML).',
  image_url: 'https://unsplash.com/photos/6JVlSdgMacE',
  source_url: 'https://en.wikipedia.org/wiki/CSS'
)
css.save!
