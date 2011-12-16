class Topic < ActiveRecord::Base
  has_many :votes

  def self.search(search, page)
    paginate :per_page => 25, :page => page,
      :conditions => ['title like ?', "%#{search}%"], :order => 'title'
  end

 end
