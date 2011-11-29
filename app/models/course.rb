class Course < ActiveRecord::Base
  
  #belongs_to :workshop
  belongs_to :workshop
  belongs_to :assistance_list
  
  validates_presence_of :name   
  validates_presence_of :responsible
  
  validates_length_of :name, :within => 0..100  
  validates_length_of :responsible, :within => 0..80
  validates_length_of :description, :within => 0..200
  validates_format_of :responsible, :with => /^([a-zA-Z\ \-]{3,100})$/i  
    
    def self.findf(course,work)
      find(:all,:conditions => ['courses_types_id = ? AND workshop_id = ?', "#{course}", "#{work}"])
  end
end
