# Función recursiva para calcular x^y
potencia <- function(x, y) {
  if (y == 0) {
    return(1)  # x^0 es 1
  } else if (y > 0) {
    return(x * potencia(x, y - 1))  # Caso recursivo
  } else {
    return(1 / potencia(x, -y))  # Caso para exponentes negativos
  }
}

# Función recursiva para calcular (x^y)^z
potencia_compuesta <- function(x, y, z) {
  if (z == 0) {
    return(1)  # Cualquier número a la potencia 0 es 1
  } else if (z > 0) {
    return(potencia(potencia(x, y), z))  # Caso recursivo
  } else {
    return(1 / potencia(potencia(x, y), -z))  # Caso para exponentes negativos
  }
}

# Solicitar los valores al usuario
x <- as.numeric(readline(prompt = "Ingrese el valor de x: "))
y <- as.numeric(readline(prompt = "Ingrese el valor de y: "))
z <- as.numeric(readline(prompt = "Ingrese el valor de z: "))

# Calcular el resultado
resultado <- potencia_compuesta(x, y, z)

# Imprimir el resultado
cat("El resultado de (", x, "^", y, ")^", z, "es:", resultado, "\n")

