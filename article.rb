# user.rb
require_relative 'rethink_mapper/document'

class Article
  include RethinkMapper::Document
end

article = Article.new
puts article.save


