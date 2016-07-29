require 'nokogiri'
require 'open-uri'

class SearchImageByLink
  attr_reader :result
  attr_reader :link

  def initialize(link)
    @link = link.to_s
  end

  def search
    links_filtered
  end

  private

  def html
    @html ||= Nokogiri::HTML open link
  end

  def get_links
    html.css("img").map{|img| img.attr('src') }
  end

  def links_filtered
    get_links.delete_if{|link| link.nil? || link.empty? }
  end
end
