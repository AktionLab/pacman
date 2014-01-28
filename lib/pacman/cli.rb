require 'thor'
require 'git'
require 'rvm'

module Pacman
  class CLI < Thor
    include Thor::Actions

    desc "new NAME", "Creates a new project."
    method_option :origin
    def new(name)
      empty_directory name
      Dir.chdir name
      git = Git.init
      say_status 'init', 'foo'
      RVM.rvm :use, "ruby-2.1.0@#{name}", create: true, rvmrc: true
      say_status 'rvm use', "ruby-2.1.0@#{name}"
      git.lib.remote_add('origin', "git@github.com:#{options[:origin]}/#{name}.git")
      say_status 'remote add', "git@github.com:#{options[:origin]}/#{name}.git"
      git.add all: true
      git.commit 'Initial project setup'
      say_status 'commit', "Initial project setup"
    end
  end
end
