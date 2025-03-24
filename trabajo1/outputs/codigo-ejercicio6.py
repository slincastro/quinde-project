from functools import reduce

# List of sales data
ventas = [345.55, 487.65, 512.99, 634.22, 283.75]

# Calculate total sales using reduce
ventas_totales = reduce(lambda x, y: x + y, ventas)

# Calculate average sales
promedio_ventas = ventas_totales / len(ventas)

# Output results
print(f"Ventas Totales: {ventas_totales}")
print(f"Promedio de Ventas: {promedio_ventas}")