# rethink_mapper/field.rb
module RethinkMapper::Field
  def field(name, hash = {})
    # attr_accessor(name)

    define_method(name) { instance_variable_get("@#{name}") }

    define_method("#{name}=") do |value|
      instance_variable_set("@#{name}", value || hash[:default])
    end
  end

  def to_s
    "#{self.name} < RethinkMapper"
  end
end
