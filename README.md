## CodeMetrics [![Inline docs](http://inch-ci.org/github/bf4/code_metrics.png)](http://inch-ci.org/github/bf4/code_metrics)

Independent library [extracted from Rails code statistics](https://github.com/rails/rails/pull/11148).

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
    dirs = CodeMetrics::StatsDirectories.new
    dirs.add_test_directories('spec/**/*_spec.rb', 'spec') # where the 2nd argument is a required string in the filename
    dirs.add_directories('engines/**/*.rb') # no restrictions on the file name, 2nd argument omitted
    dirs.add_test_directory('Acceptance specs', 'spec/acceptance')
    dirs.directories # outputs an array of [description, folder_path] to run statistics against
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

  * [Code](https://github.com/bf4/code_metrics/pulls)
  * [Issues, Bug Reports, Suggestions](https://github.com/bf4/code_metrics/issues)

## Code Status

* [![Build Status](https://travis-ci.org/bf4/code_metrics.png?branch=master)](https://travis-ci.org/bf4/code_metrics)
* [![Dependencies](https://gemnasium.com/bf4/code_metrics.png?travis)](https://gemnasium.com/bf4/code_metrics)

## License

Released under the [MIT License](http://www.opensource.org/licenses/MIT).


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/bf4/code_metrics/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

