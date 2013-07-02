require "spec_helper"

describe PostalCode do
  it { PostalCode.load_data.should_not be_nil }
end
