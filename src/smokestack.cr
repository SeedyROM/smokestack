require "./smokestack/*"

macro factory(klass, &block)
  class {{ klass }}Factory < Mock({{ klass }})
    {{ block.body }}
  end
end

class Person
  property :first_name, :last_name, :age

  @first_name = ""
  @last_name = ""
  @age = 13
end

factory Person do
  puts "I work"
end

x = PersonFactory.new
y = x.create
puts typeof(y)