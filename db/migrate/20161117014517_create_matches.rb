class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :result
      t.string :team1
      t.string :team2
      t.string :club

      t.timestamps null: false
    end
  end
end
