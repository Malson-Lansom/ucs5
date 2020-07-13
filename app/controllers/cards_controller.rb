class CardsController < ApplicationController
  def new
    @form = Form::ProductCollection.new
  end

  def create
    @form = Form::ProductCollection.new(card_collection_params)
    if @form.save
      redirect_to :cards, notice: "#{@form.target_cards.size}件を登録しました。"
    else
      render :new
    end
  end

  private

  def card_collection_params
    params.require(:form_card_collection).permit(cards_attributes: Form::Product::REGISTRABLE_ATTRIBUTES)
  end
end
