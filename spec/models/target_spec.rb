require 'rails_helper'

describe Target do

  it { is_expected.to have_many :thoughts }

end
