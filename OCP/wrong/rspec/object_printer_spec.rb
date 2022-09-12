# frozen_string_literal: true

require_relative '../object_printer'
require_relative 'rspec_helper'

RSpec.describe ObjectPrinter do
  let(:object) { Class.new { extend ObjectPrinter } }
  describe '#print_to_console' do
    let(:parameter) { 'output' }

    context 'with valid object' do
      it 'returns a valid sring' do
        expect { object.print_to_console(parameter) }.to output('output').to_stdout
      end
    end

    context 'with invalid object' do
      it 'returns empty std output' do
        expect { object.print_to_console(nil) }.to output('').to_stdout
      end
    end
  end

  describe '#print_to_file' do
    let(:filename) { 'test.txt' }
    let(:content_file) { 'content' }

    context 'with valid data' do
      it 'returns data' do
        expect {
          object.print_to_file(filename, content_file)
        }.to output("\"Successfully writen String to the file test.txt.\"\n").to_stdout
      end
    end

    context 'with invalid data' do
      content_file = nil
      filename = nil

      it 'returns nil' do
        expect { object.print_to_file(filename, content_file) }.to raise_error(TypeError)
      end
    end
  end
end

