// Variables
const name = document.querySelector(".name");
const lastName = document.querySelector(".lastName");
const email1 = document.querySelector(".email1");
const email2 = document.querySelector(".email2");
const password = document.querySelector(".password");
const btnsCrear = document.querySelector(".btn-info");

 
//Event 
EventLister();

function EventLister(){
    document.addEventListener('DOMContentLoaded', InicioApp);
    name.addEventListener('blur', validarCampos);
    lastName.addEventListener('blur', validarCampos);
    email1.addEventListener('blur', validarCampos);
    email2.addEventListener('blur', validarCampos);
    password.addEventListener('blur', validarCampos);
}


// Funciones
function InicioApp() {
    btnsCrear.disabled = true;
};

function validarCampos(){
    validarLongitud(this);

    //Valido emails
    if(this.type == 'email'){
        validarEmail(this);
    }

    if(this.type == 'password'){
        validarPassword(this);
    }

    if(name.value !== '' && lastName.value !== '' && email1.value !== '' && email2.value !== '' && password.value !== ''){
        btnsCrear.disabled = false;
    }
};

function validarLongitud(campo){
    if (campo.value.length > 0) {
        campo.style.borderColor = '#2ecc71';
        campo.classList.remove('error');
    }else {
        campo.style.borderColor = 'red';
        campo.classList.add('error');
    }
};

function validarEmail(campo) {
    const valorEmail = campo.value;
    if(valorEmail.indexOf('@') !== -1){
        campo.style.borderColor = '#2ecc71';
        campo.classList.remove('error');
    }else{
        campo.style.borderColor = 'red';
        campo.classList.add('error');
    }
};

function validarPassword(campo) {
    const valorPassword = campo.value;
    if(valorPassword.length >= 8){
        campo.style.borderColor = '#2ecc71';
        campo.classList.remove('error');
    }else{
        campo.style.borderColor = 'red';
        campo.classList.add('error');
    }
};