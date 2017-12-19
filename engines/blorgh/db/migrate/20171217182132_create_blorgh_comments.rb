class CreateBlorghComments < ActiveRecord::Migration[5.0]
  def change
    create_table :blorgh_comments do |t|
      t.references :article, foreign_key: true, index: true
      t.text :text

      t.timestamps
    end
  end
end
