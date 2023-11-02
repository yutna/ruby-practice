require "redcarpet"

MARKDOWN_FILE_PATH =
  File.expand_path(File.join("lib", "chapter_16", "sample.md"))

markdown_content = File.read(MARKDOWN_FILE_PATH)
markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
puts markdown.render(markdown_content)
