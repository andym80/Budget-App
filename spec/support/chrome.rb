# frozen_string_literal: true

RSpec.configure do |config|
  config.before(:each, type: :system) do
    if ENV['SHOW_BROWSER'] == 'true'
      driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
    else
      driven_by :selenium_headless, using: :chrome, screen_size: [1400, 1400]
    end
  end
end
