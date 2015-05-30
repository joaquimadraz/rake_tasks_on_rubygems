require 'internal_task/version'

module InternalTask

  extend Rake::DSL

  namespace :internal_task do
    desc 'Say hello'

    task :hello do
      puts 'running the task..'

      Helper.print_the_message

      puts 'done!'
    end
  end

  module Helper

    def self.print_the_message
      puts 'hello!'
    end

  end

end

