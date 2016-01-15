module Jekyll

  class CategoryPage < Page
    def initialize(site, base, dir, category)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'posts.html')
      self.data['category'] = category

      category_title_prefix = site.config['category_title_prefix'] || 'Category: '
      self.data['title_prefix'] = category_title_prefix
      self.data['title'] = category
    end
  end

  class CategoryPageGenerator < Generator
    safe true

    def url_format(category)
      category.downcase.tr(' ', '-')
    end

    def generate(site)
      if site.layouts.key? 'posts'
        site.categories.each_key do |category|
          site.pages << CategoryPage.new(site, site.source, File.join('categories', url_format(category)), category)
        end
      end
    end
  end

end
