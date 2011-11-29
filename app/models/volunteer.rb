class Volunteer < ActiveRecord::Base
  #put constants here

  #put relations and references here
  has_one :group #relacion para group_leader
  belongs_to :group
  belongs_to :assistance_list
  
  #put active record callbacks here
  file_column :volunteer_photo
  #put validates here
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :second_last_name
  validates_presence_of :position  
  validates_presence_of :date_of_birth
  validates_presence_of :genre
  validates_uniqueness_of :name, :scope => [:last_name, :second_last_name]
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{0,50})\Z/i, :allow_blank => true  
  validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_format_of :last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  validates_format_of :second_last_name, :with => /^([a-zA-Z\ \-]{3,50})$/i
  validates_format_of :profession, :with => /^([a-zA-Z\ \-]{3,50})$/i,:allow_blank => true  
  validates_format_of :position, :with => /^([a-zA-Z\ \-]{3,20})$/i
  
  validates_numericality_of :phone_number,:allow_blank => true, :message => " no es un numero o es incorrecto" 
  validates_numericality_of :movil, :greater_than => 100000, :less_than => 999999999,:allow_blank => true  , :message => " no es un numero o es incorrecto" 

  validates_file_format_of :volunteer_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :volunteer_photo, :in => 1.kilobytes..3000.kilobytes
  #put class methods here
  def self.search(search,group)
    if search       
          find(:all, :conditions => ['name LIKE ? OR last_name LIKE ? OR second_last_name LIKE ? OR profession LIKE ?', "%#{search}%","%#{search}%","%#{search}%","%#{search}%"])           
    else     
      if group
          find(:all, :conditions => ['group_id = ?', "#{group}"])   
        else 
        find(:all)  
      end
    end
         
  end
  
  #put object methods here
  def to_s
    "#{name} #{last_name} #{second_last_name}"
  end

end