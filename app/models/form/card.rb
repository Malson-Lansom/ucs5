class Form::Card < Card
  REGISTRABLE_ATTRIBUTES = %i(omote ura)
  attr_accessor :register
end