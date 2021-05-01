class Event < ApplicationRecord
    TYPE = %w(Saison Tournoi)
    belongs_to :club
    validates :name, presence: true, uniqueness: true
    validates :type, presence: true, uniqueness: true
    validates :type, inclusion: { in: TYPE}
end
