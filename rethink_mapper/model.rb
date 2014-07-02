# rethink_mapper/model.rb
module RethinkMapper::Model
  def initialize(hash = {})
    hash.each do |key, value|
      instance_variable_set("@#{key}", value)
    end
  end
end
