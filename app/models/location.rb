class Location < ApplicationRecord
  geocoded_by :country
  after_validation :geocode, if: :will_save_change_to_country?
end
