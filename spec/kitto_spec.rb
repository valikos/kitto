require "spec_helper"

describe Kitto do
  it "has a version number" do
    expect(Kitto::VERSION).not_to be nil
  end

  context 'Model' do
    context 'when extending module instead class' do
      it 'raises an error WrongExpandClass' do
        expect {
          module Dummy
            include Kitto::Model
          end
        }.to raise_error Kitto::WrongExpandClass
      end
    end
  end

  context 'ValueObject' do
    context 'when extending module instead class' do
      it 'raises an error WrongExpandClass' do
        expect {
          module Dummy
            include Kitto::ValueObject
          end
        }.to raise_error Kitto::WrongExpandClass
      end
    end
  end
end
