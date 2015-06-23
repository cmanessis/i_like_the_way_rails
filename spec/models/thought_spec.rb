require 'rails_helper'

describe Thought do

  it { is_expected.to belong_to :user }

end
