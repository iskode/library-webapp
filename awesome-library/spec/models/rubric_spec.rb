require 'spec_helper'

describe Rubric do

  describe '#names' do

    it 'when no rubrics' do
      expect(Rubric.all).to be_empty
    end

    it 'when some rubrics' do
      rubrics = []
      ['History', 'Sociology'].each {|r| rubrics.push(Rubric.create!(name: r))}
      expect(Rubric.all).to eq rubrics
    end

  end
end
