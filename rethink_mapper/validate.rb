# rethink_mapper/validate.rb
module RethinkMapper::Validate
  def validates(column, hash)
    puts "validates #{column} #{hash}"
  end
end
