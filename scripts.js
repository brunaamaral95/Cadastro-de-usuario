


function  EmBranco(campo){
    if (campo.value == "")
    return true;
    else
    return false;
}

function conferir_login(frm_login){
    if(EmBranco(frm_login.frm_email)== true){
        alert("Informe seu email corretamente");
        frm_login.frm_email.focus();
        return false;
    }
    if(EmBranco(frm_login.frm_senha)== true){
        alert("Por favor informe a senha.");
        frm_login.frm_senha.focus();
        return false;
    }
    if(frm_login.frm_senha.value.length !=6){
        alert("Por favor, a senha deve conter 6 caracteres.");
        frm_login.frm_senha.focus();
        return false;
    }
}

