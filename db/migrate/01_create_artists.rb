class CreateArtists < ActiveRecord::Migration[4.2]
    def change 
        create_table :artists_2 do |t| 
            t.string :name
            t.string :genre 
            t.integer :age 
            t.string :hometown 
            
            #adding this line will not work after running db:migrate because AR keeps track of the migrations we have already run. We would want to use a rollback instead. 
            #t.string :another_added_attribute 
        end
    end 
end 

