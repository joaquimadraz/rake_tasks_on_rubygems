require 'internal_task/version'
require 'rake' unless defined? Rake

module InternalTask

  extend Rake::DSL

  namespace :internal_task do
    desc 'Say hello'

    task :hello do
      helper = Helper.new
      helper.puts_hello
    end
  end

  class Helper

    def puts_hello
      puts 'hello!'
    end

  end

end

