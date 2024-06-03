a) Con respecto al tiempo de ejecución, se puede notar que no siempre será el mismo, por ejemplo, si otros procesos están siendo ejecutados
en paralelo ese valor variará, en un ambiente hipotético donde todos los componentes funcionen a la misma valocidad constantemente, el valor también
sería constante. No es predecible ya que, dicho anteriormente, no siempre el valor será el mismo.

b) Teniendo en cuenta lo explicado en el inciso anterior, no son iguales, a menos que se de la casualidad de que pase.

c) En este caso, tanto el "sumador" como el "restador", están utilizando la misma variable de forma global (recurso compartido) sin ningún control, debería dar
siempre 0 como resultado, pero al descomentar las líneas marcadas, podemos encontrar de manera más notoria el error, dando resultados distintos cada vez.