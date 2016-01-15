module Jekyll

  class TagPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'posts.html')
      self.data['tag'] = tag

      tag_title_prefix = site.config['tag_title_prefix'] || 'Tagged: '
      self.data['title_prefix'] = tag_title_prefix
      self.data['title'] = tag
    end
  end

  class TagPageGenerator < Generator
    safe true

    def url_format(tag)
      tag.downcase.tr(' ', '-')
    end

    def generate(site)
      if site.layouts.key? 'posts'
        site.tags.each_key do |tag|
          formatted_tag = tag.downcase.tr(' ', '-')
          site.pages << TagPage.new(site, site.source, File.join('tags', url_format(tag)), tag)
        end
      end
    end
  end

end
