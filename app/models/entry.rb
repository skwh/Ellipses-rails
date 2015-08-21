class Entry < ActiveRecord::Base
  validates_uniqueness_of :title
  before_save :create_slug, :create_formatted_body

  def create_slug
    self.slug = title.parameterize
  end

  def create_formatted_body
    self.form_body = body
  end

  def to_param
    slug
  end

  def self.find_by_param(input)
    find_by_slug(input)
  end
end
