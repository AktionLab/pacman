Feature: Create Project
  In order to bootstrap a project quickly
  As a developer
  I want a single command that will handle boilerplate project setup for me

  Scenario: Create project directory
    When I run `pacman create_project test`
    Then a directory named "test" should exist

  Scenario: Initialize local git repository
    When I run `pacman create_project test`
    Then a directory named "test/.git" should exist
