# Temboo does lots more than just work with APIs. We've got a growing collection of programming 
# utilities that will make your life much easier. In this tutorial we'll show you how to use these handy 
# code shortcuts by working through a URL encoding example.

# # You might ask "why is URL encoding important?". Well, URLs can only be sent over the Internet 
# using the ASCII character-set. Since URLs often contain non-ASCII characters, they need to be converted 
# so they only contain valid characters. The general rule is that unsafe characters are replaced with a % 
# followed by two hexadecimal digits. Spaces are replaced by either a plus sign (+) or with %20. 
# You've probably seen URLs full of strange looking characters, and now you know why!

# The good news is that you don't actually have to worry about the specifics. Our URL encoding utility 
# will do all the work for you.


require "temboo"
require "Library/Utilities"

class URLEncoder

    def initialize()
        # Set up your connection to Temboo.
        @session = TembooSession.new("anmol1771", 
                                     "SF", 
                                     "8896dc9a19f94248884de4369dd9b50f")
    end

    def url_encode()
        # Instantiate the Choreo, using the session instance variable
        url_encode_choreo = Utilities::Encoding::URLEncode.new(@session)

	# Get an InputSet object for the choreo
	url_encode_inputs = url_encode_choreo.new_input_set()

	# Set inputs
	url_encode_inputs.set_Text("I'm Enc0ding URL$ wITh T3mBo0")

	# Execute Choreo
	urlEncodeResults = url_encode_choreo.execute(url_encode_inputs)

	# Print resuls
	puts urlEncodeResults.get_URLEncodedText()
    end
end

instance = URLEncoder.new()
instance.url_encode()