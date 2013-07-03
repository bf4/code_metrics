begin
  require 'rake'
  namespace :code_metrics do

    desc "Report code statistics (KLOCs, etc) from the application"
    task :stats do
      require 'code_metrics/statistics'
      STATS_DIRECTORIES = CodeMetrics::StatsDirectories.new.directories
      CodeMetrics::Statistics.new(*STATS_DIRECTORIES).to_s
    end
  end
rescue LoadError
  STDERR.puts "Cannot load rake code_metrics:stats task, rake not available"
end
