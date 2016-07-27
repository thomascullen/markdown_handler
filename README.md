# Rails Markdown Handler

### Adds markdown template handling to rails using the [Redcarpet](https://github.com/vmg/redcarpet) gem.

RailsMarkdownHandler will also parses ERB and embeded HTML.

## Installation

```
gem "markdown_handler"
```

```
$ bundle install
```

## Usage

app/config/routes.rb
```ruby
get "/example", to: "pages#example"
```

app/controllers/pages_controller.rb
```ruby
class PagesController < ApplicationController
  def example
  end
end
```

app/views/pages/example.md
```md
# Posts

<% @posts.each do |post| %>
  ## <%= post.title %>
  <%= post.body %>
<% end %>
```

## Configuration

You can configure the redcarpet renderer using an initializer.
```ruby
# app/config/initializers/markdown.rb
MarkdownHandler.configure do |config|
  config[:autolink] = false
end
```
