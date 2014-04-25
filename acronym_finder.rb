require 'json'
class AcronymFinder
  def acronyms
    @acronyms ||= JSON.parse(File.read('acronyms.json'))
  end

  def initialize(text)
    @text = text
  end

  def html
    abbr_text = @text
    acronyms.each do |acronym|
      abbr_text = abbr_text.gsub(/\b#{acronym['acronym']}\b/, "<abbr title=\"#{acronym['definition']}\">#{acronym['acronym']}</abbr>")
    end
    abbr_text
  end
end