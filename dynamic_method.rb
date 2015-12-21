class A; end

A.class_eval do
  define_method :dynamic_method do
    puts 'dynamic_method : A#dynamic_method'
  end
end

A.new.dynamic_method #=> dynamic_method : A#dynamic_method


class B
  def self.create_method(method)
    define_method method do
      yield
    end
  end
end

B.create_method('dynamic_method') { puts 'dynamic_method : B#dynamic_method' }
B.new.dynamic_method #=> dynamic_method : B#dynamic_method
