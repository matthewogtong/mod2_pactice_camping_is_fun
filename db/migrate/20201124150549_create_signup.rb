class CreateSignup < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.integer :time
      t.integer :activity_id
      t.integer :camper_id
    end
  end
end
