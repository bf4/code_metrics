# coding:utf-8
require 'test_helper'
require 'code_metrics/railtie'

module CodeMetrics
  class RakeTest < ActiveSupport::TestCase
    def test_code_metrics_sanity
      assert_match "Code LOC: 5     Test LOC: 0     Code to Test Ratio: 1:0.0",
        Dir.chdir(app_path){ `rake code_metrics:stats` }
    end
    def app_path
      File.expand_path('../dummy', __FILE__)
    end
  end
end
