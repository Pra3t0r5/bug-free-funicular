const obtenerPrecios = () => {
  const elementosPrecio = document.querySelectorAll(".ui-search-price__second-line > span");
  return Array.from(elementosPrecio).map(el => parseFloat(el.textContent.replace(/\D+/g, "")));
};

const calcularAhorros = (precios) => {
  // Utiliza las APIs de Infleta y Steamcito para calcular los ahorros y mostrar la información.
};

const mostrarAhorros = (ahorros) => {
  // Crea elementos en la página y muestra la información de ahorros.
};

const precios = obtenerPrecios();
const ahorros = calcularAhorros(precios);
mostrarAhorros(ahorros);
