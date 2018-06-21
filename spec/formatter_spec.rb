require "./lib/formatter.rb"

describe Formatter do

  it "has a header stored in the formatter" do
    expect(subject.header).to eq("date || credit || debit || balance")
  end

  describe ".format_transaction" do


  end

end
