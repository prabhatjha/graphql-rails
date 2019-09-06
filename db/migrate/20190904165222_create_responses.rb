class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.string :uuid
      t.belongs_to :end_user, null: false, foreign_key: true
      t.string :text
      t.integer :score

      t.timestamps
    end
  end
end
