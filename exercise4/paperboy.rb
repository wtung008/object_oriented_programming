class Paperboy

attr_reader :name, :earnings
attr_assessor :experience

  def initialize (name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
