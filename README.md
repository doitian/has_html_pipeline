# HasHtmlPipeline

TODO: Write a gem description

## Installation

Add following lines to your application's Gemfile:

    gem 'html-pipeline'
    # or
    # gem 'html-pipeline-no-charlock'
    gem 'has_html_pipeline'

Gem `html-pipeline` must be added manually since it has too many unnecessary
dependencies, so you can choose to include `html-pipeline-no-charlock`.

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html-pipeline # or html-pipeline-no-charlock
    $ gem install has_html_pipeline

## Usage

    HasHtmlPipeline.register_html_pipeline(:markdown, [HTML::Pipeline::MarkdownFilter])

    class User
      extend HasHtmlPipeline

      attr_accessor :about

      has_html_pipeline :about, :markdown
    end

    u = User.new
    u.about = '# Markdown #'
    u.about_html # => '<h1>Markdown</h1>'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
