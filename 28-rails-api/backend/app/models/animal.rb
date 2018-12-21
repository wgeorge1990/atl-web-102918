class Animal < ApplicationRecord
  belongs_to :species
  enum gender: [:male, :female, :unknown]

  def show_for_api
    {
      name: name
    }
  end
end
