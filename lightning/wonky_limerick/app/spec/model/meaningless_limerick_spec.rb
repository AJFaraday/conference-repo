require File.dirname(__FILE__) + '/../spec_helper'
require File.dirname(__FILE__) + '/../rails_helper'

class LineNotFoundError < StandardError
  def message
    "You haven't written this line yet!"
  end
end

describe Limerick do

  context 'line 1' do

    it 'should have 8 syllables' do
      true.should be true
    end

    it 'should sound like a limerick first line' do
      true.should be true
    end

  end

  context 'line 2' do

    it 'should rhyme with line 1' do
      true.should be true
    end

    it 'should share a theme with line 1' do
      false.should be false
    end

  end

  context 'line 3' do

    it 'should share a theme with line 1' do
      true.should be true
    end

    it 'should share a theme with line 2' do
      false.should be false
    end

  end

  context 'line 4' do

    it 'should share a theme with line 1' do
      true.should be true
    end

    it 'should share a theme with line 2' do
      false.should be false
    end

    it 'should share a theme with line 3' do
      false.should be false
    end

    it 'should rhyme with line 3' do
      true.should be true
    end

  end

  context 'line 5' do

    it 'should share a theme with line 1' do
      true.should be true
    end

    it 'should share a theme with line 2' do
      true.should be true
    end

    it 'should share a theme with line 3' do
      true.should be true
    end

    it 'should share a theme with line 4' do
      true.should be true
    end

    it 'should rhyme with line 1' do
      true.should be true
    end

    it 'should rhyme with line 2' do
      true.should be true
    end

    it 'should carry a punch line' do
      true.should be true
    end

  end

end
