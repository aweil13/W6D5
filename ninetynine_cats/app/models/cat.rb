require 'action_view'

class Cat < ApplicationRecord
    ActionView::Helpers::DateHelper
    COLORS = ["black", "white", "grey", "brown", "orange", "pink"]
    validates :color, inclusion: {in: COLORS, message: "%{value} is not a valid color"}
    validates :sex, inclusion: {in: %w(M F)}
    validates :name, presence: true 
    validates :description, presence: true 
    validates :birth_date, presence: true 
    

    def age
        present = 2021
        present - self.birth_date.year 
    end


end