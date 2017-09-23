class CreateRedirects < ActiveRecord::Migration[5.1]
  def change
    create_table :redirects do |t|
      t.string :url
      t.string :shortened
      t.integer :accessed

      t.timestamps
    end
  end
end
