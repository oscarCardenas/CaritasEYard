class AddDefaultPastorsIndex < ActiveRecord::Migration
   def self.up  
    execute "truncate table pastors"   
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number,date_of_birth,state) values('Juan','Souza','Divaglio',10,20,'2011-10-24',true);"
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number,date_of_birth,state) values('Roberto','Chumacero','Angulo',10,20,'2011-10-24',true);"
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number,date_of_birth,state) values('Alejandro','Maldonado','Valdez',10,20,'2011-10-24',true);"
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number,date_of_birth,state) values('Bruno','Mendieta','Cardenas',10,20,'2011-10-24',true);"
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number,date_of_birth,state) values('Pedro','Tailon','Divaglio',10,20,'2011-10-24',true);"
  end

  def self.down    
    execute "truncate table pastors"   
  end
end
