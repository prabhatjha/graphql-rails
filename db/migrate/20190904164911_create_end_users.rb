class CreateEndUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :end_users do |t|
      t.string :email
      t.string :name
      t.string :external_id
      t.string :uuid

      t.timestamps
    end
  end
end
