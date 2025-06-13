class Task < ApplicationRecord
    validates :title, presence: true

    def ==(other)
        self.attributes.keys.each do |k|          
            if ["id", "created_at", "updated_at"].include? k
                next
            end
            return false unless self[k] == other[k]
        end
        return true
    end
end
