class Campaing < ActiveRecord::Base
  #put constants here

  #put relations and references here

  #put active record callbacks here

  #put validates here
  validates_presence_of :name
  validates_presence_of :location
 
  validates_presence_of :responsible
  
  validates_length_of :name, :within => 0..100
  validates_length_of :location, :within => 0..80
  validates_length_of :responsible, :within => 0..80
  validates_format_of :responsible, :with => /^([a-zA-Z\ \-]{3,100})$/i

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
  def self.find_last_five
    last = find(:all,:order => "date_ini")
    last.sort{|a,b| b.date_ini <=> a.date_ini}.slice(0..3)
  end
  
  #put object methods here
end
