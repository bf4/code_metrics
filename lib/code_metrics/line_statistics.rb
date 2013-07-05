module CodeMetrics
  class LineStatistics

    # @param files [Array, FileList, Enumerable]
    # e.g. FileList["lib/active_record/**/*.rb"]
    def initialize(files)
      @files = Array(files).compact
    end

    # Calculates LOC for each file
    # Outputs each file and a total LOC
    def print_loc
      lines, codelines, total_lines, total_codelines = 0, 0, 0, 0

      @files.each do |file_name|
        next if file_name =~ /vendor/
        File.open(file_name, 'r') do |f|
          while line = f.gets
            lines += 1
            next if line =~ /^\s*$/
            next if line =~ /^\s*#/
            codelines += 1
          end
        end
        puts "L: #{sprintf("%4d", lines)}, LOC #{sprintf("%4d", codelines)} | #{file_name}"

        total_lines     += lines
        total_codelines += codelines

        lines, codelines = 0, 0
      end

      puts "Total: Lines #{total_lines}, LOC #{total_codelines}"
    end

  end
end
