# user.rb
require_relative 'rethink_mapper/document'

class User
  include RethinkMapper::Document

  has_many :articles
  validates :first_name, presence: true
end

user = User.new
puts user.save

puts User.first
puts User.count
