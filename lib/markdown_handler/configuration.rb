module MarkdownHandler
  class << self
    def default_config
      {
        autolink: true,
        lax_spacing: false,
        fenced_code_blocks: true,
        space_after_headers: true,
        disable_indented_code_blocks: true
      }
    end

    def configure
      yield config
    end

    def config
      @config ||= default_config
    end
  end
end
