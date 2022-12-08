class CreateMesseges < ActiveRecord::Migration[6.0]
  def change
    create_table :messeges do |t|
      t.string  :content
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
