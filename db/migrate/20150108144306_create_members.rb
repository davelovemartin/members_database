class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :post_code
      t.string :home_telephone_number
      t.string :mobile_telephone_number
      t.string :email
      t.string :website
      t.string :age_group
      t.string :term_address
      t.string :term_post_code
      t.boolean :coffee
      t.boolean :projector
      t.boolean :data_collection
      t.boolean :stewarding
      t.boolean :picture_hanging
      t.boolean :portering
      t.boolean :general
      t.boolean :website_social_media
      t.boolean :painting_sessions
      t.boolean :committee_member
      t.boolean :general_help
      t.boolean :online_and_email
      t.boolean :post

      t.timestamps
    end
  end
end
