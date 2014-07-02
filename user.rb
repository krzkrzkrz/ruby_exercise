# user.rb
require_relative 'rethink_mapper/document'

class User
  include RethinkMapper::Document

  has_many :articles
  validates :first_name, presence: true

  field :first_name
  field :last_name
  field :email_name
  field :role, default: 'Admin'
  field :country_name, default: 'Philippines'
end

user = User.new
puts user.save

puts User.first
puts User.count

puts user.first_name # nil
puts user.first_name = 'Jack'
puts user.first_name # Jack

puts user.country_name
puts user.country_name = 'Germany'
