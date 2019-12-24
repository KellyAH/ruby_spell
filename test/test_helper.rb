# initializes all the Minitest specific configurations, plugins, and reporters.
# This file must be included at the top of each test file in the test directory with require 'test_helper'.
require "minitest/reporters"

# swaps out the Minitest runner to the custom one used by minitest-reporters
# and uses the correct reporters for Textmate, Rubymine, and the console.
# ATTN: spec reporter only works if this env var is set: export MINITEST_REPORTER=SpecReporter
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new