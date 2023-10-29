require "nokogiri"

html = <<END_OF_HTML
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>This is the page title</title>
  </head>
  <body>
    <h1>Big heading!</h1>
    <p>A paragraph of text.</p>
    <ul>
      <li>Item 1 in a list</li>
      <li>Item 2</li>
      <li class="highlighted">Item 3</li>
    </ul>
  </body>
</html>
END_OF_HTML

doc = Nokogiri.HTML(html)
puts doc.css("h1").first.inner_html
