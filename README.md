# Markerb Pure

This fork uses [Kramdown](https://github.com/gettalong/kramdown) for generating the HTML. 
Since Kramdown is a fast, pure Ruby implementation, you can use markerb-pure also on JRuby.

# Markerb

Markerb allows you to render multipart e-mails from a single template.
The template is written in Markdown, which is delivered as a text part, but also rendered and delivered as an HTML part.

The usage is quite simple. Assuming you have a notifier as below:

    class Notifier < ActionMailer::Base
      def contact(recipient)
        @recipient = recipient
        mail(:to => @recipient, :from => "john.doe@example.com") do |format|
          format.text
          format.html
        end
      end
    end

If you create a template at `app/views/notifier/contact.markerb`:

    Multipart templates **rocks**, right <%= @recipient %>?!

It will generate two parts, one in text and another in html when delivered. Before we finish, here are a few things you might need to know:

* The `contact.markerb` template should not have a format in its name. Adding a format would make it unavailable to be rendered in different formats.

* The order of the parts matter. It is important for e-mail clients that you call `format.text` before you call `format.html`.

* Notice you can normally use ERb inside the template.

Enjoy!

## Copyright and License

Created by the fine folks at PlataformaTec under the MIT-LICENSE (please check MIT-LICENSE file for more info).
Adapted to a pure markdown library for usage on JRuby by Michael Kessler.