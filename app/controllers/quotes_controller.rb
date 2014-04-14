class QuotesController < ApplicationController

def index
	#This calls the scraper and then assigns the output to @quote
	#This is how we get calls into the view
	@quote = QuoteScraper.scrape

end

end
