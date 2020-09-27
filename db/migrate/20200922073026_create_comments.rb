class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer   :user_id,         null: false, foreign_key: true
      t.string    :business_name,   null: false
      t.text      :explanation,     null: false   
      t.integer   :image        
      t.timestamps
    end
  end
end
