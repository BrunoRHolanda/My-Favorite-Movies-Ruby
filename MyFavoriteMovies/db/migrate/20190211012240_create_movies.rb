class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :ext_id
      t.boolean :watched

      t.timestamps
    end
  end
end
