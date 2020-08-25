class Author < ActiveRecord::Base
    # include ActiveModel::Validations
    # validates_with AuthorValidator
    validates :name, presence: true
    validates :email, uniqueness: true
end
