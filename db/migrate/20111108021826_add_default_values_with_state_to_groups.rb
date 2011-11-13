class AddDefaultValuesWithStateToGroups < ActiveRecord::Migration
  def self.up
    execute "insert into groups(id,name,volunteer_id,parish_id,state) values(0,'',0,0,true);"
    execute "insert into groups(name,volunteer_id,parish_id,state) values('Corazonsitos',0,0,true);"
    execute "insert into groups(name,volunteer_id,parish_id,state) values('La piedad',0,0,true);"
    execute "insert into groups(name,volunteer_id,parish_id,state) values('La piedra',0,0,true);"
    execute "insert into groups(name,volunteer_id,parish_id,state) values('La razon',0,0,true);"
  end

  def self.down
        execute "truncate table groups"    
  end
end
