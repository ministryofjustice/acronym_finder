require './acronym_finder'

describe AcronymFinder do
  it "should replace acronyms with abbrs with definitions" do
    AcronymFinder.new("This is AAC").html.should == "This is <abbr title=\"Administrative Appeals Court\">AAC</abbr>"
  end

  it "should not replace acronyms inside words" do
    AcronymFinder.new("This is flAAC yes").html.should == "This is flAAC yes"
  end
end
