require 'spec_helper'

describe Rubric do

  describe '#names' do

    it 'when no rubrics' do
      expect(Rubric.names).to be_empty
    end

    it 'when some rubrics' do
      rubric_names = ['History', 'Sociology']
      rubric_names.each {|r| Rubric.create!(name: r)}
      expect(Rubric.names).to eq rubric_names
    end

  end
end
