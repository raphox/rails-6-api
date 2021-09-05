class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.references :post, null: false, foreign_key: true, type: :uuid
      t.text :body

      t.timestamps
    end
  end
end
