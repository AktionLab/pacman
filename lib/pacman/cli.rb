require 'thor'
require 'git'
require 'rvm'

module Pacman
  class CLI < Thor

    desc "create_project NAME", "Creates a new project."
    method_option :origin
    def create_project(name)
      FileUtils.mkdir name
      Dir.chdir name
      git = Git.init
      RVM.rvm :use, "ruby-2.1.0@#{name}", create: true, rvmrc: true
      git.lib.remote_add('origin', "git@github.com:#{options[:origin]}/#{name}.git")
      git.add all: true
      git.commit 'Initial project setup'
    end
  end
end
