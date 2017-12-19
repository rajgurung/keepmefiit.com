module Core
  class Engine < ::Rails::Engine
    isolate_namespace Core
    config.generators.api_only = true
  end
end
