require 'selenium-webdriver'
require 'page-object'
require 'require_all'
require_all 'lib'
require_all 'pages'
# Dir[File.dirname(__FILE__) + '/pages/*.rb'].each {|file| require file }

Given(/^I open https:\/\/www\.google\.com$/) do
  @google = @browser
  @google.open_page
end

When(/^I search for "([^"]*)"$/) do |search_term|
  on(Homepage).searchbox = search_term
end

Then(/^I should see the results$/) do
  puts "testing"
end