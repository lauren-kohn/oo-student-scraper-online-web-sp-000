require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def self.scrape_index_page(index_url)
    student_hash = {}
    students = Nokogiri::HTML(open('https://learn-co-curriculum.github.io/student-scraper-test-page/index.html'))
    #binding.pry
    students.css("div.student-card").each do |student|
      #student = Student.new 
      student_hash[name] = student.css("student-name").text
      student_hash[location] = student.css("student-location").text
      student_hash[profile_url] = student.css("a")["href"]
    end
    student_hash
  end
  
  def self.scrape_profile_page(profile_url)
    
  end

end

