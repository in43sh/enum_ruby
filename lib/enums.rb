module Enumerable
  def my_each
    return self.to_enum unless block_given?
    for i in self
      yield i
    end
  end
end