class CoursesType < ActiveRecord::Base
  #has_many :courses
  def self.findf(course)
      find(:all,:conditions => ['id = ?', "#{course}"])
  end
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
   
end
