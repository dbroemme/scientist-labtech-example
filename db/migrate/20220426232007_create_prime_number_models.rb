class CreatePrimeNumberModels < ActiveRecord::Migration[5.1]
  def change
    create_table :prime_number_models do |t|
      t.integer :number
      t.integer :factor

      t.timestamps
    end
  end
end
