require 'distance_in_weeks'

describe DistanceInWeeks do 

	it "should return less than a  week ago if difference of days is less than 7" do
		week_in_words = DistanceInWeeks.weeks_in_words((Date.today - 2).strftime('%d-%m-%Y'))
		week_in_words.should == "less than a week ago"
	end
	it "should return about a  week ago if difference of days is greater than a week and less than 2 weeks" do
		week_in_words = DistanceInWeeks.weeks_in_words((Date.today - 10).strftime('%d-%m-%Y'))
		week_in_words.should == "about a week ago"
	end
	it "should return about 2 weeks  ago if difference of days is greater than two weeks and less than 3 weeks" do
		week_in_words = DistanceInWeeks.weeks_in_words((Date.today - 15).strftime('%d-%m-%Y'))
		week_in_words.should == "about 2 weeks ago"
	end
	it "should return about a week from now if the date is less than a week from now" do
		week_in_words = DistanceInWeeks.weeks_in_words((Date.today + 3).strftime('%d-%m-%Y'))
		week_in_words.should == "about a week from now"
	end
	it "should return about 2 weeks from now if the date is greater than a week and less than 2 weeks from now" do
		week_in_words = DistanceInWeeks.weeks_in_words((Date.today + 8).strftime('%d-%m-%Y'))
		week_in_words.should == "about 2 weeks from now"
	end
	it "should return about 4 weeks from now if the date is greater than 3 weeks and less than 4 weeks from now" do
		week_in_words = DistanceInWeeks.weeks_in_words((Date.today + 25).strftime('%d-%m-%Y'))
		week_in_words.should == "about 4 weeks from now"
	end
	
end