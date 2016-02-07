require 'reply'
require 'rspec/expectations'

When(/^cell number (\d+) texts Kandy$/) do |cell|
  @params[:msisdn] = cell
end

Then(/^Kandy should respond with "([^"]*)"$/) do |response|
  expect(reply_for @params).to match(/#{response}/m)
end

Given(/^cell number (\d+) belongs to "([^"]*)"$/) do |number, name|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^cell number (\d+) texts Kandy with "([^"]*)"$/) do |number, query|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^a job ad (\d+) posted by "([^"]*)" is active$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end