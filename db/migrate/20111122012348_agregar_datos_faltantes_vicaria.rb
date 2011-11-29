class AgregarDatosFaltantesVicaria < ActiveRecord::Migration
  def self.up
    execute "update vicarious set pastor_id=7 where id=4;"
    execute "update vicarious set pastor_id=8 where id=5;"
    execute "update vicarious set pastor_id=9 where id=6;"

  end

  def self.down
  end
end
