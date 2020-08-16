require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
  def self.scrape_index_page(index_url)
    student_array = []
    doc = Nokogiri::HTML(open(index_url))
    students = doc.css("div.student-card")
    students.each do |student|
      hash = { :name = student.css("student-name").text
               :location = student.css("student-location").text
               :profile_url = student.css("a")["href"]
    end
    puts student_array
  end
  
  def self.scrape_profile_page(profile_url)
    
  end

end

