class InsertarDatosPordefectoVoluntariosGrupos < ActiveRecord::Migration
  def self.up      
    execute "truncate table volunteers"
    execute "truncate table groups"    
    execute "insert into groups(id,name,volunteer_id) values(0,'',0);"
    execute "insert into groups(name,volunteer_id) values('Corazonsitos',0);"
    execute "insert into groups(name,volunteer_id) values('La piedad',0);"
    execute "insert into groups(name,volunteer_id) values('La piedra',0);"
    execute "insert into groups(name,volunteer_id) values('La razon',0);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('alejandro','maldonado','gongora','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('maria','caceres','gongora','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('raul','Amurrio','gongora','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('mauricio','riguerea','leon','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('valeria','mejia','fernandez','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    
  end

  def self.down
    execute "truncate table volunteers"
    execute "truncate table groups"        
  end
end
