# app/models/quote_scraper.rb
class QuoteScraper
	def self.scrape
		#HTTParty pulls the HTML from the website (response.body)
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/g/george_carlin.html')
		#Then we throw that output into a Nokogiri HTML document for parsing
		doc = Nokogiri::HTML(response.body)

		# Do funky things with it using Nokogiri::XML::Node methods...
		# Search for nodes by css
		#we used '.bqQuoteLink' to grab the quotes in the boxes, because the quotes all have this CSS element
		quotes =[]
		doc.css('.bqQuoteLink a').each do |quote|
 			quotes << quote.inner_html
		end
		#outputs a sample element from the array as the return of the method
		quotes.sample

	end


end