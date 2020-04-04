class SqlController < ApplicationController

   def query
   
      sql = <<-SQL
         SELECT *
         FROM shippers
         LIMIT 5; 
      SQL

      records_array = ActiveRecord::Base.connection.execute(sql)
      render json: records_array

   end 

end
