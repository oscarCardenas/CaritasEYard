class CampaingPhoto < ActiveRecord::Base
  belongs_to :campaing
  has_attached_file :data
  
  validates_attachment_size :data, :less_than => 500.kilobytes, :message => 'la imagen no puede tener un tamaño mayor a 500 KB'
  validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png'], :message => 'el archivo debe ser de formato JPEG o PNG'
end
