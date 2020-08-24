class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true


end


# create_table "authors", force: :cascade do |t|
#   t.string   "name"
#   t.string   "email"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end