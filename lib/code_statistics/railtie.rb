require 'code_statistics'
require 'rails'
module CodeStatistics
  class Railtie < Rails::Railtie
    railtie_name :code_statistics

    rake_tasks do
      load "tasks/statistics.rake"
    end
  end
end
