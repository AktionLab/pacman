require 'aruba/cucumber'

Before do
  @dirs = ["sandbox"]
end

After do
  Dir['./sandbox/*'].each {|d| FileUtils.rm_rf(d)}
end
