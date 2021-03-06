class Page < ActiveRecord::Base
  has_many :page_item_relationships
  has_many :generic_items, :through => :page_item_relationships
  
  has_many :page_menu_relationships
  has_many :menu_items, :through => :page_menu_relationships
  
  validates :url, uniqueness: true
end