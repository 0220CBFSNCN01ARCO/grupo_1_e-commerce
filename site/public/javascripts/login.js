// Variables 
const email = document.querySelector('.emailLogin');
const password = document.querySelector('.passwordLogin');
const btn = document.querySelector('.btn-info')


//Event
EventListener();

function EventListener(){
      document.addEventListener('DOMContentLoaded', InicioApp);
      //Validar campos
      email.addEventListener('blur', validarCampos);
      password.addEventListener('blur', validarCampos);
};

function InicioApp(){
    btn.disabled = true;
};

function validarCampos(){
    contenidoCampos(this);
    //Valido email
    if(this.type == 'email'){
        validarEmail(this);
    };

    if(this.type == 'password'){
        validarPassword(this);
    };

    //Valid si hay algo en los campos y se desbloquea el boton
    if (email.value !== '' && password.value !== '') {
        btn.disabled = false;
    };
};
// Cambia el color si no se encuentra nada dentro de los campos
function contenidoCampos(campo){
    if (campo.value.length > 0) {
        campo.style.borderColor = '#2ecc71';
        campo.classList.remove('error');
    }else{
        campo.style.borderColor = 'red';
        campo.classList.add('error');
    };
};

function validarEmail(campo){
    const campoEmail = campo.value;
    if (campoEmail.indexOf('@') !== -1) {
        campo.style.borderColor = '#2ecc71';
        campo.classList.remove('error');
    }else {
        campo.style.borderColor = 'red';
        campo.classList.add('error');
    };
}

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