require 'reply'
require 'rspec/expectations'

When(/^cell number (\d+) texts Kandy$/) do |cell|
  @params[:From] = cell
end

Then(/^Kandy should respond with "([^"]*)"$/) do |response|
  expect(reply_for @params).to match(/#{response}/m)
end

Given(/^cell number (\d+) belongs to "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^cell number (\d+) texts Kandy with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^a job ad (\d+) posted by "([^"]*)" is active$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end