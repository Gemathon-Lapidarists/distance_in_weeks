require "distance_in_weeks/version"
require "week_calc"

module DistanceInWeeks

	def self.weeks_in_words(date)
		weeks = Date.weeks_till_now(date)
		msg = ["less than a week" , "about a week" , "about #{weeks} weeks"]
		if Date.strptime(date , "%d-%m-%Y") > Date.today
			return "#{msg[0]} from now" if weeks == 0
			return "#{msg[1]} from now" if weeks == 1
			return "#{msg[2]} from now" if weeks > 1
		else
			return "#{msg[0]} ago" if weeks == 0
			return "#{msg[1]} ago" if weeks == 1
			return "#{msg[2]} ago" if weeks > 1
		end
	end
end
