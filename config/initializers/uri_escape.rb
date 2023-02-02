# frozen_string_literal: true

# Monkey patching fix for error:
# ActionView::Template::Error (undefined method `escape' for URI:Module
# See https://stackoverflow.com/questions/71991240/undefined-method-escape-for-urimodule-in-ruby-3

# URI monkey patching module
module URI
  def self.escape(url)
    url
  end
end
