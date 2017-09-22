require 'json'
require 'httparty'

module Postcodes

    class SinglePostcode

        include HTTParty

        base_uri 'http://api.postcodes.io/postcodes'

        def initialize(single_postcode_string)
            @get_single_postcode = self.class.get("/#{single_postcode_string}")
        end

        def get_single_postcode_headers
            @get_single_postcode.headers.inspect
        end

        def get_single_postcode_body
            JSON.parse(@get_single_postcode.body)
        end

        def get_single_postcode_response_message
            @get_single_postcode.message
        end

        def get_single_message_response_code
            @get_single_postcode.code
        end
    end

    class MultiplePostcodes

        include HTTParty

        base_uri 'http://api.postcodes.io/postcodes'

        def initialize(multi_postcode_array)
            @get_multiple_postcodes = self.class.post('', body: {"postcodes" => multi_postcode_array})
        end

        def get_multiple_postcodes_headers
            @get_multiple_postcodes.headers.inspect
        end

        def get_multiple_postcodes_body
            JSON.parse(@get_multiple_postcodes.body)
        end

        def get_multiple_postcodes_response_message
            @get_multiple_postcodes.message
        end

        def get_multiple_postcodes_response_code
            @get_multiple_postcodes.code
        end
    end

    class PostcodeGenerator
        def Generate
            generated_postcode = HTTParty.get('https://www.doogal.co.uk/CreateRandomPostcode.ashx').body

            generated_postcode.split(',')  
        end
    end

end


multi_postcodes = Postcodes::MultiplePostcodes.new(["OX49 5NU", "M32 0JG", "NE30 1DP"])
# Creates new instance of class containing random postcode generator
random_postcode = Postcodes::PostcodeGenerator.new
# Removes the spacing of the first array within the generated postcode array
random_postcode = random_postcode.Generate[0].gsub(' ', '')  
# p multi_postcodes.get_multiple_postcodes_body

postcodes = Postcodes::SinglePostcode.new(random_postcode)

p multi_postcodes.get_multiple_postcodes_body['result']



