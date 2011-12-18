class CoursesType < ActiveRecord::Base
  file_column :course_file
  validates_filesize_of :course_file, :in => 1.kilobytes..10000.kilobytes, :message => "no puede ser m'as grande de 10 MB"

  
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
