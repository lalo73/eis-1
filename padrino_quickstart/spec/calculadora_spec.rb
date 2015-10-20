require 'rspec'
require_relative '../app/models/calculadora'

describe 'calculadora' do

  let(:calculadora) {Calculadora.new}

  context 'cuando se crea una calculadora' do

    it 'deberia tener la cantidad de operaciones en 0' do
      expect(calculadora.cantidad_operaciones).to eq 0
    end

  end

  context 'cuando hago operaciones con la calculadora deberia incrementarse el contador' do

    it 'deberia incrementarse cuando sumo' do
      calculadora.sumar(4,5)
      expect(calculadora.cantidad_operaciones).to eq 1
      calculadora.sumar(4,5)
      expect(calculadora.cantidad_operaciones).to eq 2
    end

    it 'deberia incrementarse cuando resto' do
      calculadora.restar(9,4)
      expect(calculadora.cantidad_operaciones).to eq 1
      calculadora.restar(9,4)
      expect(calculadora.cantidad_operaciones).to eq 2
    end

  end

  context 'cuando reseteo la memoria de la calculadora, la cantidad de operaciones deberia ser 0' do

    it 'deberia ser 0 despues del reseteo' do
      calculadora.sumar(1,2)
      calculadora.restar(1,2)
      calculadora.promedio(6)
      expect(calculadora.cantidad_operaciones).to eq 3

      calculadora.resetear_memoria
      expect(calculadora.cantidad_operaciones).to eq 0
    end

  end

end