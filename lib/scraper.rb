require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def self.scrape_index_page(index_url)
    student_array = []
    doc = Nokogiri::HTML(open(index_url))
    students.css("div.student-card").each do |student|
      
      #student = Student.new 
      student_array[:name] = student.css("student-name").text
      student_array[:location] = student.css("student-location").text
      student_array[:profile_url] = student.css("a")["href"]
    end
    puts student_array
  end
  
  def self.scrape_profile_page(profile_url)
    
  end

end

