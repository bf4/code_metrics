module CodeMetrics
  require 'code_metrics/version'
  require 'code_metrics/statistics'
  $VERBOSE = nil
  if defined?(Rails)
    require 'code_metrics/railtie'
  else
    load "tasks/statistics.rake"
  end
end
