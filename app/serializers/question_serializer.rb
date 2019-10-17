# frozen_string_literal: true

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :phrase, :user
end
