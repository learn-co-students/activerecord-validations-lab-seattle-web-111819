class ClickbaitValidator < ActiveModel::Validator

    def validate(record)
        unless record.title.match? [/Won\'t Believe/i, /Secret/i, /Top [0-9]*/i, /Guess/i]
            record.errors[:title] << "This title is insufficiently clickbait-y."
        end
    end 

end