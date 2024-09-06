# frozen_string_literal: true

module Stopwords
  module Snowball
    # A filter for removing stopwords from a text, using a Snowball-based stopword list.
    class Filter < Stopwords::Filter
      attr_reader :locale, :locale_filename

      def initialize(locale, custom_list = [])
        raise ArgumentError, 'Locale cannot be nil' if locale.nil?

        @locale = locale.gsub(/-\w+/, '') # remove country appendix
        @locale_filename = File.join(File.dirname(__FILE__), 'locales', locale.to_s)

        raise ArgumentError, "Unknown locale: #{locale.inspect}" unless File.exist?(@locale_filename)

        stopwords = File.read(@locale_filename).split(',').map(&:downcase) + custom_list.map(&:downcase)
        super(stopwords)
      end
    end
  end
end
