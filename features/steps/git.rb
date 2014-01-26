Then /^git has a commit$/ do
  git = Git.open('sandbox/test')
  git.log.count.should_not be_zero
end

Then /^git has a remote named "([^"]+)" for "([^"]+)"$/ do |name,remote_repo|
  git = Git.open('sandbox/test')
  git.remote(name).url.should == remote_repo
end
