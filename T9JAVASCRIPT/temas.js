// Obtener los botones de cambio de tema
const theme1Btn = document.getElementById('theme1-btn');
const theme2Btn = document.getElementById('theme2-btn');
const theme3Btn = document.getElementById('theme3-btn');

// Agregar event listeners a los botones
theme1Btn.addEventListener('click', setTheme1);
theme2Btn.addEventListener('click', setTheme2);
theme3Btn.addEventListener('click', setTheme3);

// Funciones para cambiar el tema de la página
function setTheme1() {
  document.body.className = 'theme1';
}

function setTheme2() {
  document.body.className = 'theme2';
}

function setTheme3() {
  document.body.className = 'theme3';
}

const accordion = document.querySelector('.accordion');

accordion.addEventListener('click', event => {
  if (event.target.tagName === 'A') {
    const content = event.target.nextElementSibling;
    content.style.maxHeight = content.style.maxHeight ? null : `${content.scrollHeight}px`;
 }
});