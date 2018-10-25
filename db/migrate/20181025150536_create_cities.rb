class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.timestamps
    end
    change_table :dogs do |t|
      t.belongs_to :city, index: true
    end
    change_table :dogsitters do |t|
      t.belongs_to :city, index: true
    end
  end
end
