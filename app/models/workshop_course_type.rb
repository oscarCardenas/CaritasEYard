class WorkshopCourseType < ActiveRecord::Base
  
  def to_s
    "Curso #{CoursesType.findf(id_course_type)[0].name}"
  end
  def self.searchByWork(work)
      find(:all, :conditions => ['id_workshop = ? ', "#{work}"])
  end
end
