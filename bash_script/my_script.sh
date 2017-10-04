#!/bin/bash

install="gem install"

# For Ubuntu only
sudo apt-get install ruby-full
echo "installed ruby"

gem install rspec
echo "installed rspec"

gem install selenium-webdriver
echo "installed selenium-webdriver"

gem install pry
echo "installed Pry"

gem install site_prism
echo "installed site_prism"

gem install cucumber
echo "installed cucumber"

gem install capybara
echo "installed capybara"

gem install activesupport
echo "installed acitive_support"
