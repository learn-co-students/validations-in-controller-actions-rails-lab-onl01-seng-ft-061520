
class TitleValidator < ActiveModel::Validator   
    def validate(record)

        if !record.title
            record.errors[:title] << "You must give a title"
        end

    end
end



