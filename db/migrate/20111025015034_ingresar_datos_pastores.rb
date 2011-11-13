class IngresarDatosPastores < ActiveRecord::Migration
def self.up  
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number) values('Juan','Souza','Divaglio',10,20);"
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number) values('Pedro','Mustafa','Loktar',120,34);"
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number) values('Lucas','Dimatelo','Dimitri',103,25);"
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number) values('Pablo','Chumacero','Bacalao',30,21);"
    execute "insert into pastors(name,primary_last_name,second_last_name,phone_number,cellphone_number) values('Bartolomeo','Cuevas','Villa',130,43);"
  end

  def self.down    
    execute "truncate table pastors"   
  end
end
