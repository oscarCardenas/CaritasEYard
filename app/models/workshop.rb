class Workshop < ActiveRecord::Base
  has_one :parish 
  #has_and_belongs_to_many :course
  has_many :progress
  has_many :courses, :through => :progresses
  
  belongs_to :volunteer
  #has_many :volunteers
  
  validates_presence_of :parish_id 
  validates_presence_of :in_charge
  validates_presence_of :course
  
  #validates_length_of :in_charge, :within => 0..80
  validates_length_of :observations, :within => 0..100
  #validates_format_of :in_charge, :with => /^([a-zA-Z\ \-]{3,100})$/i
  
  
  def self.search(search)
    
   if search
      find(:all, :conditions => ['parish LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
