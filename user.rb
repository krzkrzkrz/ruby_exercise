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

# puts User
user = User.new(first_name: 'foo', last_name: 'bar')
puts user.inspect
puts user.first_name
puts user.last_name
# puts user.save
#
# puts User.first
# puts User.count
#
# puts user.first_name # nil
# puts user.first_name = 'Jack'
# puts user.first_name # Jack

# puts user.country_name # Philippines
# puts user.country_name = 'Italy' # Italy
# puts user.country_name = nil # ''
# puts user.country_name
# puts user.country_name = 'Australia'
# puts user.country_name
# puts user.country_name = nil # nil
