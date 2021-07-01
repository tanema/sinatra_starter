class ShortUrl < ActiveRecord::Base
  CHAR_SET = [*"a".."z", *"A".."Z", *"0".."9"]
  CODE_LEN = 8

  validates_presence_of :long_url
  validates_presence_of :short_code

  def self.shorten(long_url)
    short_code = generate_short while short_code.nil? || exists?(short_code: short_code)
    create(long_url: long_url, short_code: short_code)
  end

  private

  def self.generate_short
    CHAR_SET.sample(CODE_LEN).join
  end
end
