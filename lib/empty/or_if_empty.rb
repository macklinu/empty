require "empty"

module Empty
  module OrIfEmpty
    def or_if_empty(collection)
      return self if any?
      collection
    end
  end
end
