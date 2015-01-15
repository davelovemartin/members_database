class Member < ActiveRecord::Base

  attr_accessible :address, :age_group, :coffee, :committee_member, :data_collection, :email, :first_name, :general, :general_help, :home_telephone_number, :last_name, :mobile_telephone_number, :online_and_email, :painting_sessions, :picture_hanging, :portering, :post, :post_code, :projector, :stewarding, :term_address, :term_post_code, :title, :website, :website_social_media

  attr_defaults :coffee => false, :committee_member => false, :data_collection => false, :general => false, :general_help => false, :online_and_email => false, :painting_sessions => false, :picture_hanging => false, :portering => false, :post => false, :projector => false, :stewarding => false, :website_social_media => false

  validates :address, :length => { :in => 6..255 },	:allow_blank => true
  validates :age_group, :length => { :in => 1..20 }, :allow_blank => true
  validates :email, :length => { :in => 5..255 }
  validates :first_name, :presence => true, :length => { :in => 1..20 }
  validates :home_telephone_number, :length => { :in => 1..11 }, :allow_blank => true
  validates :last_name, :presence => true
  validates :mobile_telephone_number, :length => { :in => 1..11 }, :allow_blank => true
  validates :post_code, :length => { :in => 6..10 }, :allow_blank => true
  validates :term_address, :length => { :in => 0..255 }, :allow_blank => true
  validates :term_post_code, :length => { :in => 6..10 }, :allow_blank => true
  validates :title, :length => { :in => 0..10 }, :allow_blank => true
  validates :website, :length => { :in => 0..255 }, :allow_blank => true

  def self.to_csv

    CSV.generate do |csv|
      csv << column_names
      all.each do |member|
        csv << member.attributes.values_at(*column_names)
      end
    end
  end

end
