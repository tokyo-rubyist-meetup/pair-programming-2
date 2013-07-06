# encoding: UTF-8
require "spec_helper"

describe PostalCode do
  it { PostalCode.find("104-0033").should == %w[東京都 中央区 新川] }
  it { PostalCode.find("999-9999").should == nil }
  it { PostalCode.reverse_lookup("東京都中央区新川1-3-4 PAビル5F").should == "104-0033" }
  it { PostalCode.reverse_lookup("東京都中央区新川１丁目３−４").should == "104-0033" }
  it { PostalCode.reverse_lookup("東京都新宿区東榎町12-4 鳥畑ビル3F").should == "162-0807" }
  it { PostalCode.reverse_lookup("北海道札幌市北区北11条西2丁目1番5-802号").should == "001-0011" }
end
