class Form::CardCollection < Form::Base
  DEFAULT_ITEM_COUNT = 10
  attr_accessor :cards

  def initialize(attributes = {})
    super attributes
    self.cards = DEFAULT_ITEM_COUNT.times.map { Form::Card.new } unless cards.present?
  end

  def cards_attributes=(attributes)
    self.cards = attributes.map do |_, product_attributes|
      Form::Card.new(card_attributes).tap { |v| v.availability = false }
    end
  end

  def valid?
    valid_cards = target_cards.map(&:valid?).all?
    super && valid_cards
  end

  def save
    return false unless valid?
    Card.transaction { target_cards.each(&:save!) }
    true
  end

  def target_cards
    self.cards.select { |v| value_to_boolean(v.register) }
  end
end