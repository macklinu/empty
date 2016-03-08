require "empty"

module Empty
  module OrIfEmpty
    def or_if_empty
      return self if any?
      yield
    end
  end
end
