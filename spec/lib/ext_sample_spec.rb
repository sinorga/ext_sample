require "ext_sample"

describe ExtSample do
  it "cats two strings in c function" do
    expect(ExtSample.str_cat("or", "ga")).to eq("orga")
  end
end
