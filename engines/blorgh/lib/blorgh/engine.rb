module Blorgh
  class Engine < ::Rails::Engine
    isolate_namespace Blorgh
    config.generators.api_only = true
  end
end
