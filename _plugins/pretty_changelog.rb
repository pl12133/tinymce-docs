module Jekyll
  module PrettyChangelog
    def pretty_changelog(input)
      lines = input.split(/\n/)
      lines = lines.map { |line| line.sub(/\* fixed/i, "* <span class=\"fixed\">fixed</span>") }
      lines = lines.map { |line| line.sub(/\* added/i, "* <span class=\"added\">added</span>") }
      lines = lines.map { |line| line.sub(/\* removed/i, "* <span class=\"removed\">removed</span>") }
      lines = lines.map { |line| line.sub(/\* rewrote/i, "* <span class=\"rewrote\">rewrote</span>") }
      lines = lines.map { |line| line.sub(/\* changed/i, "* <span class=\"rewrote\">changed</span>") }
      lines = lines.map { |line| line.sub(/\* updated/i, "* <span class=\"rewrote\" style=\"color: pink;\">updated</span>") }
      input = lines.join("\n")
    end
  end
end

Liquid::Template.register_filter(Jekyll::PrettyChangelog)