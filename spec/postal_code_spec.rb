# encoding: UTF-8
require "spec_helper"

describe PostalCode do
  it { PostalCode.find("104-0033").should == %w[東京都 中央区 新川] }
  it { PostalCode.find("999-9999").should == nil }
end
