module Carrier
  module Lookup
	class Perform
		DATA_PATH = "#{File.dirname(__FILE__)}/../bin/_Data.csv"
		attr_accessor :response

		# Perform carrier lookup 
		def lookup(number)

		  number = lookup_ready(northern_format(format_number(number[:number])))
		  Ccsv.foreach(DATA_PATH) do |row|
 				 
 			# Return after found
			if row[0] == number

			    @response = { 	
				carrier: 	row[1], 
				city: 		row[2], 
				state: 		row[3], 
				createdAt: 	row[4]
			    } 

			    return @response
			end

		  end
		  return nil
		end
			
		# Remove non numeric characters
		private
		def format_number(number)
		    number.gsub(/[^0-9]/, '')
		end


		# Remove leading (1)
		private
		def northern_format(number)
		    number.sub(/^1/, '')     
		end


		# Set number to NPX-XXX format
		private
		def lookup_ready(number)
		    number[0..5].scan(/.{1,3}/).join('-')
		end	

	  end
	end
end
