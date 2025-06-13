# frozen_string_literal: true

module Jekyll
  class TagGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.tags.each do |tag, posts|
        site.pages << TagPage.new(site, site.source, tag, posts)
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, tag, posts)
      @site = site
      @base = base
      @dir  = 'tags'
      @name = "#{tag}.html"
      @tag  = tag
      @posts = posts

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag.html')
      self.data['tag'] = tag
      self.data['title'] = "Posts tagged with '#{tag}'"
      self.data['posts'] = posts
    end
  end
end 