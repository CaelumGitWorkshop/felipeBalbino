class CreateAsds < ActiveRecord::Migration
  def self.up
    create_table :asds do |t|
      t.date :nascimento
      t.string :sobrenome
      t.string :gabriel

      t.timestamps
    end
  end

  def self.down
    drop_table :asds
  end
end
