class AgregarDatosConStateAVicaria < ActiveRecord::Migration
  def self.up
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Vicaria Norte','Zona norte cerca del templo X','Micro P',10,3,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Vicaria Sur','Avenida 6 de Julio','Micro C',10,1,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Vicaria Este','Final America y Calle Jordan','Micro X',10,2,true);"
    
  end

  def self.down
    execute "truncate table vicarious" 
  end
end
