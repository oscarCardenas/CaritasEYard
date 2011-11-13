class RemoveDefaultDataFromGroups < ActiveRecord::Migration
  def self.up
    execute "truncate table groups"
  end

  def self.down
    execute "insert into groups(id,name,volunteer_id) values(0,'',0);"
    execute "insert into groups(name,volunteer_id) values('Corazonsitos',0);"
    execute "insert into groups(name,volunteer_id) values('La piedad',0);"
    execute "insert into groups(name,volunteer_id) values('La piedra',0);"
    execute "insert into groups(name,volunteer_id) values('La razon',0);"
  end
end
