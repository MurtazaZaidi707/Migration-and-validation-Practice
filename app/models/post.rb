class Post < ApplicationRecord
  validates :body, presence: true, length: { minimum: 10 }
  validates :age, numericality: { only_integer: true }
  validate :must_be_title


  def must_be_title
    if ! (title?)
      errors.add(:title,"Custom Error" ,presence: true)
    end
  end

  validate :must_be_email
  def must_be_email
    if ! (email =~ /^(.+)@(.+)$/)
      errors.add(:email,presence: true)
    end
  end

end
