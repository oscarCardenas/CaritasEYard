class HistoryCourse < ActiveRecord::Base
  belongs_to :course
  validates_presence_of :idGroup , :message => "El Grupo no puede ser vacio"
  validates_presence_of :idParish , :message => "La Parroquia no puede ser vacio"
  validates_presence_of :idCourse , :message => "El Curso no puede ser vacio"
  validates_format_of :idGroup,:with => /^([0-9]{0,3})$/i , :message => "El Campo de Grupo solo acepta numeros"
  validates_format_of :idParish,:with => /^([0-9]{0,3})$/i , :message => "El Campo de Parroquia solo acepta numeros"
  validates_format_of :idCourse,:with => /^([0-9]{0,3})$/i , :message => "El Campo de Curso solo acepta numeros"
  validates_presence_of :instructor , :message => "El instructor no puede ser vacio"
  validates_format_of :instructor, :with => /^([a-zA-Z ]{0,255})$/i , :message => "El Campo de instructor solo acepta letras y espacios."

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['instructor LIKE ?', "#{search}"])
    else
      find(:all)
    end
  end

end
