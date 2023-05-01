mkdir icons && touch manifest.json content.js background.js styles.css && echo '{
  "manifest_version": 2,
  "name": "MiExtensionHibrida",
  "version": "1.0",
  "description": "Extensión para calcular el ahorro y la conveniencia en cuotas y mostrar el total en pesos considerando impuestos.",
  "icons": {
    "48": "icons/icon48.png",
    "128": "icons/icon128.png"
  },
  "permissions": [
    "activeTab",
    "tabs",
    "http://*/*",
    "https://*/*"
  ],
  "content_scripts": [
    {
      "matches": [
        "https://www.mercadolibre.com/*",
        "https://www.tiendamia.com/*",
        "https://www.epicgames.com/*"
      ],
      "js": ["content.js"],
      "css": ["styles.css"]
    }
  ],
  "background": {
    "scripts": ["background.js"],
    "persistent": false
  }
}' > manifest.json && echo 'const obtenerPrecios = () => {
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
mostrarAhorros(ahorros);' > content.js && echo '.ahorro-container {
  position: relative;
  display: inline-block;
}

.ahorro-info {
  display: none;
  background-color: white;
  border: 1px solid #888;
  border-radius: 5px;
  padding: 5px;
  font-size: 12px;
  position: absolute;
  z-index: 1;
}

.ahorro-container:hover .ahorro-info {
  display: block;
}' > styles.css
