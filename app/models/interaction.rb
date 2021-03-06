class Interaction < ActiveRecord::Base
  belongs_to :person
  belongs_to :user
  MEDIUMS = { email: "Email", phone: "Phone", in_person: "In Person" }

  validates :medium, inclusion: { in: MEDIUMS.keys.map(&:to_s) }
end
