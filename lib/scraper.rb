require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def self.scrape_index_page(index_url)
    students = Nokogiri::HTML(open('https://learn-co-curriculum.github.io/student-scraper-test-page/index.html'))
    #binding.pry
    student_hash = students.css("div.student-card").map do |student|
      student = Student.new 
      student.name = student.css("student-name").text
      student.location = student.css("student-location").text
      student.profile_url = student.css("a")["href"]
    end
    student_hash
  end
  
  def self.scrape_profile_page(profile_url)
    
  end

end

