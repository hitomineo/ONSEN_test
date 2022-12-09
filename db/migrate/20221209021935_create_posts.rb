class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer:customer_id ,null:false
      t.string :addres,null:false
      t.float:latitude,null:false
      t.float:longitude,null:false
      t.integer:parking,null:false
      t.integer:payment ,null:false
      t.string:toiletry ,null:false
      t.integer:towel_stock ,null:false
      t.string:skin_product,null:false
      t.string:hairdryer,null:false
      t.string:luggage,null:false
      t.string:description,null:false
      t.integer:rate ,null:false
      
      t.timestamps
    end
  end
end
