require "favoriter/version"
require "rails/generators"
require "rails/generators/active_record"
require "rails/generators/active_record/model/model_generator"

require "favoriter/acts_as_favoriter"
require "favoriter/acts_as_favoritable"


module Favoriter
  require "favoriter/engine" if defined?(Rails)
end
