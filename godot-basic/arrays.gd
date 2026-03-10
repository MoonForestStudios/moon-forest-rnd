extends Node2D

func _ready() -> void:
	var array: Array[int] = []
	array.resize(5)
	print(array)
	
	var array_number = PackedInt32Array()
	array_number.resize(3)
	var array_float: Array[float] = []
	array_float.resize(4)
	var array_number_float = PackedFloat32Array()
	array_number_float.resize(5)
	
	var array_dinamic = ["Hola", 10, 3.4]

	var ages: Array[int] = [18, 22, 43, 34, 21]
	ages[3] = 90
	ages.append(85)
	print(ages[3])
	ages.erase(43)
	print(array_dinamic)
	print(array_number_float)
	averageGrades()
	
func averageGrades() -> void:
	var n_grade: int = randi_range(1, 10)
	print("Se guardaran %d notas " % n_grade)
		
	var grades: Array[int] = []
	var averageSummary: float = 0
		
	for i in n_grade:
		var grade: int = randi_range(0, 20)
		grades.append(grade)
		averageSummary += grade
			
	for i in grades.size():
		print("La nota ingresada fue: %d " % grades[i])
	
	var average: float = averageSummary / n_grade
	print("La nota promedio es: %.2f" % averageSummary)
