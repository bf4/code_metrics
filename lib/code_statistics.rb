module CodeStatistics
  require 'code_statistics/version'
  require 'code_statistics/code_statistics'
  $VERBOSE = nil
  if defined?(Rails)
    require 'code_statistics/railtie'
  else
    load "tasks/statistics.rake"
  end
end
