require "spec_helper"

describe Kitto do
  it "has a version number" do
    expect(Kitto::VERSION).not_to be nil
  end

  context 'Model' do
    context 'when extending module instead class' do
      it 'raises an error WrongExpandClass' do
        expect {
          module TestingModule
            include Kitto::Model
          end
        }.to raise_error Kitto::WrongExpandClass
      end
    end

    context 'Attributes' do
      context 'Class' do
        before do
          class TestingClass
            include Kitto::Model

            attribute :foo
            attribute :bar
          end
        end

        it 'has a list of defined attributes' do
          expect(TestingClass.attributes).to eq([:foo, :bar])
        end

        after do
          Object.send(:remove_const, 'TestingClass')
        end
      end

      context 'Instance' do
        context 'when defining attr' do
          before do
            class TestingClass
              include Kitto::Model

              attribute :first
              attribute :second
            end
          end

          let(:expected) { TestingClass.new }

          it 'gets hash of attributes' do
            expect(expected.attributes).to eq({ first: nil, second: nil })
          end
        end
      end
    end
  end

  context 'ValueObject' do
    context 'when extending module instead class' do
      it 'raises an error WrongExpandClass' do
        expect {
          module TestingModule
            include Kitto::ValueObject
          end
        }.to raise_error Kitto::WrongExpandClass
      end
    end
  end
end
