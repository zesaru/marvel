class AddPhotoToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :photo, :string
  end
end
