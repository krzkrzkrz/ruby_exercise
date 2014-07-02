# rethink_mapper/document.rb
require_relative '../rethink_mapper'
require_relative '../rethink_mapper/query'
require_relative '../rethink_mapper/persistence'
require_relative '../rethink_mapper/association'
require_relative '../rethink_mapper/validate'

module RethinkMapper::Document
  # extend RethinkMapper::Query
  include RethinkMapper::Persistence

  def self.included(base)
    base.send :extend, RethinkMapper::Query
    base.send :extend, RethinkMapper::Association
    base.send :extend, RethinkMapper::Validate
  end
end
