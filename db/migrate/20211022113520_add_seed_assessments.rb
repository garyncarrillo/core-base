class AddSeedAssessments < ActiveRecord::Migration[6.1]
  def change
    Assessment.create(description: 'Estoy muy estresado', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Siento mucha ansiedad', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'No se que hacer para dormir mejor', assessment_type_id: AssessmentType.find(2).id)
    Assessment.create(description: 'Me enfurezco con mucha frecuencia', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'No se que hacer para manejar estres, ansiedad, ira', assessment_type_id: AssessmentType.find(6).id)
    Assessment.create(description: 'Las preocupaciones no me dejan dormir', assessment_type_id: AssessmentType.find(2).id)
    Assessment.create(description: 'Estoy muy disperso, tengo la cabeza llena de cosas', assessment_type_id: AssessmentType.find(5).id)
    Assessment.create(description: 'No tengo ni un momento de tranquilidad en mi dia', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Mi hijo hace unas pataletas terribles, se tira al pirso y llora por mucho tiempo', assessment_type_id: AssessmentType.find(4).id)
    Assessment.create(description: 'Vivo muy acelerado', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Tengo muchas cosas que hacer, me siento intranquilo muy estresado', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Mi mente va a mil con todas estas cosas por hacer', assessment_type_id: AssessmentType.find(5).id)
    Assessment.create(description: 'Tengo la mente tan revolucionada , no se que hacer para calmarme un poco cuando termino de trabajar', assessment_type_id: AssessmentType.find(5).id)
    Assessment.create(description: 'Tengo mucha presión en el trabajo, quisera tener una opcion para bajarle al estres', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Me salgo de casillas facilmente', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'No manejo mis emociones', assessment_type_id: AssessmentType.find(6).id)
    Assessment.create(description: 'No conozco mi cuerpo, no se como la respiración puede beneficiar mi cuerpo', assessment_type_id: AssessmentType.find(6).id)
    Assessment.create(description: 'No conozco mi cuerpo, no se como la respiración puede beneficiar mi cuerpo', assessment_type_id: AssessmentType.find(6).id)
    Assessment.create(description: 'La ansiedad me genera hambre', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Quiero ayudarle a mis hijos a calmar sus emociones', assessment_type_id: AssessmentType.find(4).id)
    Assessment.create(description: 'Quiero mejorar mi rendimiento', assessment_type_id: AssessmentType.find(1).id)
    Assessment.create(description: 'Ronco y me ahogo constantemente', assessment_type_id: AssessmentType.find(2).id)
    Assessment.create(description: 'Quiero estar mas tranquilo, menos nervioso antes de una reunion o entrevista de trabajo', assessment_type_id: AssessmentType.find(5).id)
    Assessment.create(description: 'Sufro de apnea del sueño', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Me despierto en medio de la noche y no puedo conciliar el sueño rapido', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Me duele la cabeza constantemente', assessment_type_id: AssessmentType.find(2).id)
    Assessment.create(description: 'Grandes cambios en mi vida han desmejorado mi salud', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'La ansiedad me quita el apetito', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'El estrés me hace sentir el estomago inflamado y sufrir de reflujo', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Siento mi mente despierta con mil pensamientos no la puedo callar', assessment_type_id: AssessmentType.find(5).id)
    Assessment.create(description: 'Tengo pensadera por el futuro, siento estres y preocupación', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Sufro de bruxismo , aprieto los dientes y la mandíbula y se me desgastan los dientes', assessment_type_id: AssessmentType.find(2).id)
    Assessment.create(description: 'Los conflictos con otras personas no dejan que duerma bien', assessment_type_id: AssessmentType.find(2).id)
    Assessment.create(description: 'Se me brota la cara, o sufro de temas de la piel cada vez que me preocupo', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Me siento cargada cada vez que tengo que tomar una decisión', assessment_type_id: AssessmentType.find(3).id)
    Assessment.create(description: 'Me siento agotado y cansado', assessment_type_id: AssessmentType.find(1).id)
    Assessment.create(description: 'Al finalizar el día no tengo fuerzas para hacer las cosas que me gustan', assessment_type_id: AssessmentType.find(1).id)
  end
end
