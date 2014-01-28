Feature: Create a new project
  In order to bootstrap a project quickly
  As a developer
  I want a single command that will handle boilerplate project setup for me

  Scenario: Create project directory
    When I run `pacman new test`
    Then a directory named "test" should exist

  Scenario: Initialize local git repository
    When I run `pacman new test`
    Then a directory named "test/.git" should exist

  Scenario: Create rvm gemset
    When I run `pacman new test`
    Then an rvm gemset named "test" should exist

  Scenario: Create rvmrc within the project
    When I run `pacman new test`
    Then a file named "test/.rvmrc" should exist

  Scenario: Create an initial commit
    When I run `pacman new test`
    And I cd to "test"
    Then git has a commit

  Scenario: Add a remote github repo if provided
    When I run `pacman new test --origin AktionLab`
    Then git has a remote named "origin" for "git@github.com:AktionLab/test.git"

  Scenario: Do not add a remote if no origin is provided
    When I run `pacman new test`
    Then git does not have a remote named "origin"
