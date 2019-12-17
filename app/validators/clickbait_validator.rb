class ClickbaitValidator < ActiveModel::Validator
    
    def validate(record)
        unless record.title && record.title.downcase.match?(/won't believe|top |secret|guess/)
            record.errors[:title] << "Not click-bait!!!!"
        end      
    end

end