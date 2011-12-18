class SocialCard < ActiveRecord::Base
   belongs_to :parish
 
  #validates_presence_of :parish_church
  validates_uniqueness_of :name
  validates_presence_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  #validates_presence_of :birthday_location
  validates_presence_of :address
  #validates_presence_of :marital_status
  validates_presence_of :gender
  #validates_presence_of :identity_card
  validates_numericality_of :identity_card,:allow_blank => true
  validates_numericality_of :phone, :greater_than => 1000000, :less_than => 9999999,:allow_blank => true  , :message => " no es un numero o es incorrecto" 
  validates_numericality_of :movil, :greater_than => 10000000, :less_than => 99999999,:allow_blank => true  ,:message => " no es un numero o es incorrecto"
  validates_presence_of :occupation, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_presence_of :family_members
  validates_presence_of :reference_person,:with => /^([a-zA-Z\ ]{3,50})$/i
  validates_presence_of :address_reference,:with => /^([a-zA-Z\ ]{3,50})$/i
  #validates_presence_of :phone_reference
  validates_numericality_of :phone_reference, :greater_than => 1000000, :less_than => 9999999,:allow_blank => true  , :message => " no es un numero o es incorrecto" 
  validates_numericality_of :movil_reference, :greater_than => 10000000, :less_than => 99999999,:allow_blank => true  ,:message => "  no es un numero o es incorrecto" 
  validates_presence_of :occupation_reference
  
  
  file_column :social_card_photo
  
  validates_file_format_of :social_card_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :social_card_photo, :in => 1.kilobytes..3000.kilobytes
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
  
end
