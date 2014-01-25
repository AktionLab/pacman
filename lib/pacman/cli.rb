require 'thor'
require 'git'
require 'rvm'

module Pacman
  class CLI < Thor

    desc "create_project NAME", "Creates a new project."
    def create_project(name)
      FileUtils.mkdir name
      Dir.chdir name
      Git.init
      RVM.rvm :use, "ruby-2.1.0@#{name}", create: true, rvmrc: true
    end
  end
end
