require File.dirname(__FILE__) + '/../rails_helper'

describe Limerick do

  before(:each) do
    @limerick = Limerick.write("
      There once was a man from Dunoon
      Who used to eat soup with a fork
      The swordfish fly
      Across the sky
      There's thousands of melting clorks")
  end

  context 'line 1' do
    it 'should have 8 syllables' do
      @limerick.lines(1).syllable_count.should eq(8)
    end
    it 'should sound like a limerick first line' do
      @limerick.lines(1).should match(/There once was an? [a-z ]* from [a-z ]*/)
    end
  end

  context 'line 2' do

    it 'should rhyme with line 1' do
      @limerick.lines(2).should rhyme_with(@limerick.lines(1))
    end

    it 'should share a theme with line 1' do
      @limerick.lines(2).should have_thematic_link_to(@limerick.lines(1))
    end

  end

end

