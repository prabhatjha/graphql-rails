class CreateDeclines < ActiveRecord::Migration[6.0]
  def change
    create_table :declines do |t|
      t.string :uuid
      t.belongs_to :end_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
