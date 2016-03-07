require "empty"
require "empty/or_if_empty"

module Empty
  class Railtie < Rails::Railtie
    initializer "empty" do |_app|
      ActiveSupport.on_load :active_record do
        ActiveRecord::Relation.send(:include, Empty::OrIfEmpty)
      end
      if defined?(Draper::CollectionDecorator)
        Draper::CollectionDecorator.send(:include, Empty::OrIfEmpty)
      end
    end
  end
end
