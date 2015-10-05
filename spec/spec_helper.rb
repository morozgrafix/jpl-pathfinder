require 'rspec'
require 'require_all'
require 'watir-webdriver'
require 'page-object'
require 'more_math'
require_all 'spec/pages'

RSpec.configure do |config|
  config.include PageObject::PageFactory

  config.before do
    @browser = Watir::Browser.new :chrome
  end

  config.after do
    @browser.close
  end
end
