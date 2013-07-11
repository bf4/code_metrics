## [CodeMetrics](https://github.com/rails/rails/pull/11148)

CodeStatistics extracted from Rails

## Getting Started

1. Install at the command prompt if you haven't yet:

    ```bash
    gem install code_metrics
    ```

### Usage

* Lines of code statistics for a folder

  * Command-line

    ```bash
    code_metrics
    ```

  * As rake task

    ```rake
    require 'code_metrics/statistics'
    ```

    ```bash
    rake code_metrics:stats
    # or in Rails (check `rake -W stats` to see what tasks are loading)
    rake stats
    ```

  * As a library

    ```ruby
    require 'code_metrics/code_statistics'
    dirs = CodeMetrics::StatsDirectories.new.directories
    dirs  << ['Acceptance specs', 'spec/acceptance']
    CodeMetrics::Statistics::TEST_TYPES << 'Acceptance specs'
    CodeMetrics::Statistics.new(*dirs).to_s

    # in Rails
    require 'rails/code_statistics'
    {
      'Acceptance' => 'spec/acceptance',
    }.each do |type, dir|
      ::STATS_DIRECTORIES << ["#{name} specs", dir]
      ::CodeStatistics::TEST_TYPES << "#{name} specs"
    end
    CodeStatistics.new(*STATS_DIRECTORIES).to_s
    ```

* Lines of code statistics for a list of files

  * As rake task

    ```rake
    require 'code_metrics/line_statistics'
    ```

    ```bash
    rake code_metrics:line_statistics[file_pattern] # e.g. ['lib/**/*.rb']
    ```

  * As a library

    ```ruby
    require 'code_metrics/line_statistics'
    files = FileList["lib/active_record/**/*.rb"]
    CodeMetrics::LineStatistics.new(files).print_loc
    ```

* Profiling memory usage of requires. POSIX-only. Requires `ps`

  * Command-line

    ```bash
    code_metrics-profile <path/to/rubyfile.rb> [optional: ruby-prof mode]
    ```

## Contributing

We encourage you to contribute to Ruby on Rails! Please check out the
[Contributing to Ruby on Rails guide](http://edgeguides.rubyonrails.org/contributing_to_ruby_on_rails.html) for guidelines about how to proceed. [Join us!](http://contributors.rubyonrails.org)

## Code Status

* [![Build Status](https://travis-ci.org/bf4/code_metrics.png?branch=master)](https://travis-ci.org/bf4/code_metrics)
* [![Dependencies](https://gemnasium.com/bf4/code_metrics.png?travis)](https://gemnasium.com/bf4/code_metrics)

## License

Ruby on Rails is released under the [MIT License](http://www.opensource.org/licenses/MIT).
