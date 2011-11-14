class Parish < ActiveRecord::Base
  PARISH_STATES = Array.[]("En Contacto","No Alcanzada", "Sensibilizada", "No Aceptada", "En Proceso", "Seguimiento")
  
  has_one :pastor
  has_one :vicariou
  belongs_to :group
  belongs_to :workshop
  file_column :parish_photo
  
  validates_presence_of :pastor_id
  validates_presence_of :vicariou_id
  
  validates_presence_of :parish_name  
  validates_presence_of :ubication
  validates_presence_of :transport
  validates_presence_of :telephone

  validates_numericality_of :telephone, :greater_than => 0, :if => "self.telephone.present?"
  validates_uniqueness_of :parish_name, :message => "La Parroquia ya existe!"
  
  validates_file_format_of :parish_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :parish_photo, :in => 1.kilobytes..3000.kilobytes
  
  def self.search(search)
    if search
      find(:all, :conditions => ['parish_name LIKE ? OR ubication LIKE ?', "%#{search}%","%#{search}%"])
    else
      find(:all)
    end
    
  end
end
