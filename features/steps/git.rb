Then /^git has a commit$/ do
  git = Git.open('sandbox/test')
  git.log.count.should_not be_zero
end
