class CambiandoTipoDatosEnObraSocial < ActiveRecord::Migration
  def self.up
    change_column :social_works, :phone, :string
    change_column :social_works, :movil, :string
  end

  def self.down
    change_column :social_works, :phone, :integer
    change_column :social_works, :movil, :integer
  end
end
