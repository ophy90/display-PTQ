class Event < ApplicationRecord
    TYPE = %w(Saison Tournoi)
    belongs_to :club
    validates :name, presence: true
    validates :winning_points, presence: true
    validates :loosing_points, presence: true
    validates :draw_points , presence: true
    validates :event_type, inclusion: { in: TYPE}, presence: true
end
