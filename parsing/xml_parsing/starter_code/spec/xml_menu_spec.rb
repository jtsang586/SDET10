require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
  end

  it "no price should be more than £10" do
    @xml_menu.xpath('//food').each do |i|
        @price = i.search('price').text.gsub('£','').to_i
        expect(@price).to be <= 10
    end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @xml_menu.xpath('//food').each do |i|
        if i.search('name').text != "Full Breakfast"
            @calories = i.search('calories').text.to_i
        end
        expect(@calories).to be <= 1000
    end
  end

  it "should have all waffle dishes stating you get two waffles" do
    @xml_menu.xpath('//food').each do |i|
        if i.search('name').text.include? "Waffles"
            @waffles_desc = i.search('description').text
        end
        expect(@waffles_desc).to include("Two")
    end
  end


end