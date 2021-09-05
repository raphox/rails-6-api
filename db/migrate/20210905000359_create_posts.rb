class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')

    create_table :posts, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
