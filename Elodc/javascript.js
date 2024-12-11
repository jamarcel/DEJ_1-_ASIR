window.onscroll = function() {
    var barra = document.getElementById("barra");
    var limite = 500;  // Define el punto donde dejará de estar fija (en píxeles)

    if (window.scrollY > limite) {
        barra.classList.remove("sticky");  // Deja de estar fija
    } else {
        barra.classList.add("sticky");  // Se fija en la parte superior
    }
};
