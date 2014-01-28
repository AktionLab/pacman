Then /^git has a commit$/ do
  git = Git.open('tmp/aruba/test')
  git.log.count.should_not be_zero
end

Then /^git has a remote named "([^"]+)" for "([^"]+)"$/ do |name,remote_repo|
  git = Git.open('tmp/aruba/test')
  git.remote(name).url.should == remote_repo
end

Then /^git does not have a remote named "([^"]+)"$/ do |name|
  git = Git.open('tmp/aruba/test')
  git.remote(name).url.should be_nil
end
