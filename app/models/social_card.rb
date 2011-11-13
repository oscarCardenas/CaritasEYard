class SocialCard < ActiveRecord::Base
  #has_many :helps , :dependent =>:destroy
  #accepts_nested_attributes_for :helps
 validates_presence_of :parish_church
 validates_uniqueness_of :name
 validates_presence_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_presence_of :birthday
  validates_presence_of :birthday_location
  validates_presence_of :address
  validates_presence_of :identity_card
  validates_numericality_of :identity_card
  validates_numericality_of :phone, :greater_than => 1000000, :less_than => 9999999,:allow_blank => true  , :message => " no es un numero o es incorrecto" 
  validates_numericality_of :movil, :greater_than => 10000000, :less_than => 99999999,:allow_blank => true  ,:message => " no es un numero o es incorrecto"
  validates_presence_of :occupation, :with => /^([a-zA-Z\ ]{3,50})$/i
  validates_presence_of :family_members

  
validates_presence_of :reference_person,:with => /^([a-zA-Z\ ]{3,50})$/i
   validates_presence_of :address_reference,:with => /^([a-zA-Z\ ]{3,50})$/i
  validates_presence_of :phone_reference
  validates_numericality_of :phone_reference, :greater_than => 1000000, :less_than => 9999999,:allow_blank => true  , :message => " no es un numero o es incorrecto" 
  validates_numericality_of :movil_reference, :greater_than => 10000000, :less_than => 99999999,:allow_blank => true  ,:message => "  no es un numero o es incorrecto" 
  validates_presence_of :occupation_reference
  

  #attr_accessible :date ,:parish_church,:name, :marital_status, :gender, :birthday, :birthday_location, :identity_card, :phone, :movil, :address, :location_reference, :grade_school, :occupation , :family_members,:parish_belongs, :family_history, :derivative_by,  :reference_person, :address_reference, :phone_reference, :movil_reference, :age_reference, :occupation_reference, :type_of_case, :did_you_get_another_help, :what_kind
  #attr_writer :current_step

 # validates_presence_of :parish_church, :if => lambda { |o| o.current_step == "personal" }
 # validates_uniqueness_of :name, :if => lambda { |o| o.current_step == "personal" }
 # validates_presence_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i,:if => lambda { |o| o.current_step == "personal" }
 # validates_presence_of :birthday, :if => lambda { |o| o.current_step == "personal" }
  #validates_presence_of :birthday_location, :if => lambda { |o| o.current_step == "personal" }
  #validates_presence_of :address, :if => lambda { |o| o.current_step == "personal" }
 # validates_presence_of :identity_card, :if => lambda { |o| o.current_step == "personal" }
#  validates_numericality_of :phone, :greater_than => 1000000, :less_than => 9999999,:allow_blank => true  , :message => " no es un numero o es incorrecto" ,  :if => lambda { |o| o.current_step == "personal" }
#  validates_numericality_of :movil, :greater_than => 10000000, :less_than => 99999999,:allow_blank => true  ,:message => " no es un numero o es incorrecto" ,  :if => lambda { |o| o.current_step == "personal" }
#  validates_presence_of :occupation, :with => /^([a-zA-Z\ ]{3,50})$/i, :if => lambda { |o| o.current_step == "personal" }
#  validates_presence_of :family_members, :if => lambda { |o| o.current_step == "personal" }

#validates_presence_of :reference_person,:with => /^([a-zA-Z\ ]{3,50})$/i, :if => lambda { |o| o.current_step == "reference" }
#   validates_presence_of :address_reference,:with => /^([a-zA-Z\ ]{3,50})$/i, :if => lambda { |o| o.current_step == "reference" }
#  validates_presence_of :phone_reference, :if => lambda { |o| o.current_step == "reference" }
#  validates_numericality_of :phone_reference, :greater_than => 1000000, :less_than => 9999999,:allow_blank => true  , :message => "El Telefono no es un numero o es incorrecto" ,  :if => lambda { |o| o.current_step == "reference" }
#  validates_numericality_of :movil_reference, :greater_than => 10000000, :less_than => 99999999,:allow_blank => true  ,:message => "El Celular no es un numero o es incorrecto" ,  :if => lambda { |o| o.current_step == "reference" }
#  validates_presence_of :occupation_reference, :if => lambda { |o| o.current_step == "reference" }

#  def current_step
 #   @current_step || steps.first
#  end

 # def steps
  #   %w[personal reference confirmation]
#  end

 # def next_step
  #  self.current_step = steps[steps.index(current_step)+1]
 # end

 # def previous_step
 #   self.current_step = steps[steps.index(current_step)-1]
 # end

  #def first_step?
  #  current_step == steps.first
 # end

  #def last_step?
  #  current_step == steps.last
  #end

 # def all_valid?
  #  steps.all? do |step|
   #   self.current_step = step
    #  valid?
    #end
  #end
end
