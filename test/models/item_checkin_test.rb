require 'test_helper'

class ItemCheckinTest < ActiveSupport::TestCase
  # testing relationships
  should belong_to(:item)
  should have_one(:bin_item)

  # testing validations
  should validate_numericality_of(:quantity_checkedin)
  should allow_value(0).for(:quantity_checkedin)
  should allow_value(5).for(:quantity_checkedin)
  should_not allow_value(-5).for(:quantity_checkedin)
  should_not allow_value(3.14159).for(:quantity_checkedin)
  should_not allow_value("bad").for(:quantity_checkedin)

  should validate_numericality_of(:quantity_remaining)
  should allow_value(0).for(:quantity_remaining)
  should allow_value(5).for(:quantity_remaining)
  should_not allow_value(-5).for(:quantity_remaining)
  should_not allow_value(3.14159).for(:quantity_remaining)
  should_not allow_value("bad").for(:quantity_remaining)
  
  should allow_value(Date.today).for(:checkin_date)
  
end
