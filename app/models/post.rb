class Post < ActiveRecord::Base
    belongs_to :author

    validates_with TitleValidator
    
    validates :content, length: { minimum: 10 }

    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    # validates_with ContentValidator

    # validates_with CategoryValidator
    # validates :category, presence: true
    # def update(attributes)
    #     attributes.each do |k, v|
    #         self.send("#{k}=", v)
    #     end
    #     self.save
    # end


    # def save
    #     @@validator_list.each do |validator|

    #     end
    #     if self.errors.empty?
    #         #execute sql command
    #         true
    #     else
    #         false

    #     end
    # end
end


