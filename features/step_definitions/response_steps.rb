require 'reply'
require 'rspec/expectations'
require 'factory_girl'

ActiveRecord::Base.configurations = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection

Before do
  Applicant.destroy_all
end

FactoryGirl.define do
  factory :applicant do
    phone "777"
    name  "Bob"
  end
end

When(/^cell number (\d+) texts Kandy$/) do |cell|
  @params = @params || {}
  @params[:msisdn] = cell
end

Then(/^Kandy should respond with "([^"]*)"$/) do |response|
  expect(reply_for @params).to match(/#{response}/m)
end

Given(/^cell number (\d+) belongs to "([^"]*)"$/) do |number, name|
  FactoryGirl.create(:applicant, phone: number.to_s, name: name)
end

When(/^cell number (\d+) texts Kandy with "([^"]*)"$/) do |cell, query|
  @params = @params || {}
  @params[:msisdn] = cell
  @params[:text] = query
end

Given(/^a job ad (\d+) posted by "([^"]*)" is active$/) do |arg1, arg2|
end