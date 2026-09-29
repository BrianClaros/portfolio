# Portfolio

## Estructura

- `index.html`: landing completa (markup, estilos y script de traducción ES/EN inline).
- `assets/img/`: foto de perfil optimizada (`brian.webp`) e imagen para Open Graph (`brian-og.jpg`).
- `assets/favicon.svg`: favicon del sitio.
- `cv.md` / `cv_en.md`: CV fuente en español e inglés.
- `CV_Brian.pdf` / `CV_Brian_en.pdf`: CVs descargables desde el botón del header (según el idioma activo) y enlazados desde devecoop.com.ar.
- `cv.css` + `build-cv.sh`: estilos y script para regenerar los PDFs (`./build-cv.sh`, requiere pandoc y Chrome).
- `photo.png`: foto de perfil cuadrada (84×84) servida para usarse desde otros sitios, p. ej. devecoop.com.ar/socies.html (no la usa `index.html`; no borrar ni renombrar).
