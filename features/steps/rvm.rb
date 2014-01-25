Then /^an rvm gemset named "([^"]+)" should exist$/ do |gemset|
  RVM.gemset.list.should include(gemset)
end
