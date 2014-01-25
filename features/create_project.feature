Feature: Create Project
  In order to bootstrap a project quickly
  As a developer
  I want a single command that will handle boilerplate project setup for me

  Scenario: Create project directory
    When I run `pacman create_project test`
    When I run `file test`
    Then the stdout should contain "test: directory"
