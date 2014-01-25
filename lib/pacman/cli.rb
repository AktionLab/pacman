require 'thor'
require 'git'

module Pacman
  class CLI < Thor

    desc "create_project NAME", "Creates a new project."
    def create_project(name)
      FileUtils.mkdir name
      Dir.chdir name
      Git.init
    end
  end
end
