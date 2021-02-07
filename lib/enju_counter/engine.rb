module EnjuCounter
  class Engine < ::Rails::Engine
    isolate_namespace EnjuCounter
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
