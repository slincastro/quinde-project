datos = [(22, 30000), (29, 40000), (35, 50000), (28, 45000), (40, 55000)]

# Step 1: Filter individuals older than 25
datos_filtrados = filter(lambda x: x[0] > 25, datos)

# Step 2: Increase income by 10%
datos_aumentados = map(lambda x: (x[0], x[1] * 1.10), datos_filtrados)

datos_aumentados = list(datos_aumentados)  # Convert map object to list for further processing

# Step 3: Calculate average income
if datos_aumentados:  # Check if the list is not empty
    ingreso_medio = sum(x[1] for x in datos_aumentados) / len(datos_aumentados)
else:
    ingreso_medio = 0

print("Ingreso medio del grupo filtrado y aumentado:", ingreso_medio)