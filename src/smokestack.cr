require "./smokestack/*"

module Smokestack
  include Factory

  class Test
  end

  x = Factory(Test).new
  puts x.get_class
end
