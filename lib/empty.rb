require "empty/version"

module Empty
end

require "empty/railtie" if defined?(Rails::Railtie)
