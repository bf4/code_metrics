# Try to get the root of the current project
module CodeMetrics
  class StatsDirectories
    def initialize
      @root = (defined?(Rails) &&  Rails.root) || Dir.pwd
    end
    def directories
      [
      %w(Controllers        app/controllers),
      %w(Helpers            app/helpers),
      %w(Models             app/models),
      %w(Mailers            app/mailers),
      %w(Javascripts        app/assets/javascripts),
      %w(Libraries          lib/),
      %w(APIs               app/apis),
      %w(Controller\ tests  test/controllers),
      %w(Helper\ tests      test/helpers),
      %w(Model\ tests       test/models),
      %w(Mailer\ tests      test/mailers),
      %w(Integration\ tests test/integration),
      %w(Functional\ tests\ (old)  test/functional),
      %w(Unit\ tests \ (old)       test/unit)
    ].collect { |name, dir| [ name, "#{@root}/#{dir}" ] }
     .select { |name, dir| File.directory?(dir) }

    end
  end
end
