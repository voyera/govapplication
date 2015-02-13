class Item < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true
  
  before_save :searchable_field
  
  private
  
    #Concatenate title + content and remove accents
    def searchable_field
       self.search = "#{title} #{content}".mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n,'').to_s.downcase
    end
end
