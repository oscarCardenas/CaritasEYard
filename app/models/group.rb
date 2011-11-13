class Group < ActiveRecord::Base

  #put constants here

  #put relations and references here
  belongs_to :volunteer   # relacion para group_leader
  has_many :volunteers
  has_one :parish
  #put active record callbacks here
  file_column :group_photo
  #put validates here
  validates_presence_of :name, :message => ' no puede estar vacio'    
  validates_presence_of :parish_id
  
  validates_file_format_of :group_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :group_photo, :in => 1.kilobytes..3000.kilobytes

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

  #put object methods here
  def close()
    if params(:must_close)
      render :template => "close", :layout => false
    else
      return_to_main
    end
  end
  
  def to_s
    "#{name}"
  end
end
