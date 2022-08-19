function  EmBranco(campo){
    if (campo.value == "")
    return true;
    else
    return false;
}

function conferir_cadastro(frm_cadastro){

    if(EmBranco(frm_cadastro.nome)== true){
        alert("Por favor,informe seu nome.");
        frm_cadastro.nome.focus();
        return false;
    }
   
    if(EmBranco(frm_cadastro.email)== true){
        alert("Por favor, informe um e-mail.");
        frm_cadastro.email.focus();
        return false;
    }
    if(EmBranco(frm_cadastro.nascimento)== true){
        alert("Por favor, informe sua data de nascimento.");
        frm_cadastro.nascimento.focus();
        return false;
    }
    if (EmBranco(frm_cadastro.senha1) == true){
        alert("Por favor, informe a senha");
        frm_cadastro.senha1.focus();
        return false;
       }
    
    if(EmBranco(frm_cadastro.senha2)==true){
        alert("Por favor, confirme a sua senha.");
        frm_cadastro.senha2.focus();
        return false;
    }
    


    if(frm_cadastro.senha1.value != frm_cadastro.senha2.value){
        alert("As senhas que foram informadas não conferem");
        frm_cadastro.senha1.value =""
        frm_cadastro.senha2.value=""
        frm_cadastro.senha1.focus();
        return false;
    }
    

    if(frm_cadastro.senha2.value.length !=6){
        alert("Por favor, a senha que deve conter 6 caracteres.");
        frm_cadastro.senha1.focus();
        frm_cadastro.senha2.focus();
        return false;
    
}
}


