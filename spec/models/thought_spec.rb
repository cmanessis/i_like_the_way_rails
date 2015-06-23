require 'rails_helper'

describe Thought do

  it { is_expected.to belong_to :user }
  it { is_expected.to belong_to :target }

  validates :question1, length :{minimum: 3}

end
