module Jekyll

  # Extensions to the Jekyll Page class.

  class Page

    # Full URL of the page.
    def full_url
        File.join(@dir, self.url)
    end

    alias orig_to_liquid to_liquid
    def to_liquid
        h = orig_to_liquid
        h['max_top'] = (self.data['max_top'] ||
                        site.config['max_top'] ||
                        15)
        h['date'] = self.date
        h
    end
  end
end
