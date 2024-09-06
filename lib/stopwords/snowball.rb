# frozen_string_literal: true

# A module for filtering stopwords from text using the Snowball algorithm.
module Stopwords::Snowball
  require_relative 'snowball/filter'
  require_relative 'snowball/wordsieve'
end
