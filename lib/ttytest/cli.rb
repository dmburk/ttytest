# frozen_string_literal: true

require 'thor'

module Ttytest
  # Handle the application command line parsing
  # and the dispatch to various command objects
  #
  # @api public
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'ttytest version'
    def version
      require_relative 'version'
      puts "v#{Ttytest::VERSION}"
    end
    map %w(--version -v) => :version
  end
end
