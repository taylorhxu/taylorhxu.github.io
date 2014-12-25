module Jekyll

  # Extensions to the Jekyll Site class.

  class Site

    # Regular expression by which blog posts are recognized
    POST_PAGE_RE = /\/id\/[0-9]+\/index.html/

    # Find my blog posts among all the pages.
    def blog_posts
        self.pages.select {|p| p.full_url =~ POST_PAGE_RE}
    end

    # Add some custom options to the site payload, accessible via the
    # "site" variable within templates.
    #
    # articles - blog articles, in reverse chronological order
    # max_recent - maximum number of recent articles to display
    alias orig_site_payload site_payload
    def site_payload
        h = orig_site_payload
        payload = h["site"]
        payload["articles"] = blog_posts.sort {|p1, p2| p2.date <=> p1.date}
        payload["max_recent"] = payload.fetch("max_recent", 15)
        h["site"] = payload
        h
    end
  end
end
