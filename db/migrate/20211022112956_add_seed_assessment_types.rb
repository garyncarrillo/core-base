class AddSeedAssessmentTypes < ActiveRecord::Migration[6.1]
  def change
    AssessmentType.create(name: 'Tipo no 1', description: 'Incrementar energia y estimular la creatividad')
    AssessmentType.create(name: 'Tipo no 2', description: 'Dormir mejor')
    AssessmentType.create(name: 'Tipo no 3', description: 'Manejar la ansiedad')
    AssessmentType.create(name: 'Tipo no 4', description: 'Enseñar a mis hijos a calmarse')
    AssessmentType.create(name: 'Tipo no 5', description: 'Calmar la mente')
    AssessmentType.create(name: 'Programa', description: 'Aprender varias herramienta de respiracion')
  end
end
