class SqlController < ApplicationController

   def query
   
      sql = params[:query]
    
      records_array = ActiveRecord::Base.connection.execute(sql)
      render json: records_array

   end 

end
