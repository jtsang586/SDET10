require_relative 'bbc_homepage'
require_relative 'bbc_sign_in'
require_relative 'bbc_register_dob'
require_relative 'bbc_register_details'

class BbcSite

    def bbc_homepage
        BbcHomepage.new
    end

    def bbc_sign_in
        BbcSignIn.new
    end

    def bbc_register_dob
        BbcRegisterdob.new
    end

    def bbc_register_details
        BbcRegisterDetails.new
    end

end