require 'aruba/cucumber'
require 'rvm'
require 'git'

After do
  RVM.gemset.delete('test')
end
