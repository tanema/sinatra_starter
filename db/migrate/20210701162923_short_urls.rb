class ShortUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :short_urls do |t|
      t.string :long_url
      t.string :short_code

      t.index :short_code
    end
  end
end
