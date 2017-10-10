class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :type

      t.timestamps
    end

    # No two companies can have the same name
    add_index :companies, :name, unique: true
  end
end
