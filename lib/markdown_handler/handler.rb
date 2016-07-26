# By default haml attempts to correctly indent the rendered html. This causes
# issues when rending code blocks
if defined? Haml::Template
  Haml::Template.options[:ugly] = true
end

module MarkdownHandler::Handler
  def self.call(template)
    compiled_template = erb.call(template)
    "MarkdownHandler::Handler.render(begin;#{compiled_template};end)"
  end

  def self.render(source)
    markdown.render(source).html_safe
  end

  private

  def self.markdown
    @markdown ||= Redcarpet::Markdown.new(
      MarkdownHandler::Renderer,
      MarkdownHandler.config
    )
  end

  def self.erb
    @erb ||= ActionView::Template.registered_template_handler(:erb)
  end
end

ActionView::Template.register_template_handler(:md, MarkdownHandler::Handler)
