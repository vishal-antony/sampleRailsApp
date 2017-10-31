class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.string :name
      t.references :portfolio, foreign_key: true, on_delete: :cascade, on_update: :cascade

      t.timestamps
    end
  end
end
