class CreateSpecials < ActiveRecord::Migration[5.2]

  def change
    create_table :specials do |table|
      table.text    :title
      table.integer :runtime
      table.text    :image
    end
  end

end
