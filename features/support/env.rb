require 'aruba/cucumber'
require 'rvm'
require 'git'

Before do
  @dirs = ["sandbox"]
end

After do
  RVM.gemset.delete('test')
  Dir['./sandbox/*'].each {|d| FileUtils.rm_rf(d)}
end
