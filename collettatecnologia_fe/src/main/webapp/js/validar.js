function validar_razao() {

  // $('input[name="nome"]').mask('SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS');

  let value = document.getElementById("razao_social").value;
  let re = /^[a-zA-ZéúíóáÉÚÍÓÁèùìòàçÇÈÙÌÒÀõãñÕÃÑêûîôâÊÛÎÔÂëÿüïöäËYÜÏÖÄ\-\ \s]+$/; 
  //value == "" || value == null

  if (!re.test(value)) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Razão Social inválida ou não informada');
    document.form_cliente.razao_social_nome.focus();
    return false;
  }
  return true;
}

//Validar pass
function validar_pass() {

  let strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
  let mediumRegex = new RegExp("^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})");
  
  let value = document.getElementById("pass").value;
  
  if (!strongRegex.test(value) && !mediumRegex.test(value) )  {
    alert('Password inv´laida ou não informada');
    document.form_cliente.pass.focus();
    return false;
  }
  return true; 
}


//Validar CNPJ
function validar_cnpj() {
  
  $('input[name="cnpj]').mask('00000000000000');
 
  let value = document.getElementById("cnpj").value;
  
  if (value == "" || value == null  ) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('CNPJ não informado ou inválido');
    document.form_cliente.cpf.focus();
    return false;
  } 
  $("#cnpj").mask("99999999999999");
  return true;
}



// validar nome
function validar_nome() {

  // $('input[name="nome"]').mask('SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS');

  let value = document.getElementById("nome").value;
  let re = /^[a-zA-ZéúíóáÉÚÍÓÁèùìòàçÇÈÙÌÒÀõãñÕÃÑêûîôâÊÛÎÔÂëÿüïöäËYÜÏÖÄ\-\ \s]+$/; 
  //value == "" || value == null

  if (!re.test(value)) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Nome não informado');
    document.form_cliente.nome.focus();
    return false;
  }
  return true;
}



function validar_email() {

  // $('input[name="nome"]').mask('SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS');

  let value = document.getElementById("email").value;
  let re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
  //value == "" || value == null

  if (!re.test(value)) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('E-mail inváludo ou não informado');
    document.form_cliente.email.focus();
    return false;
  }
  return true;
}

function validar_assunto() {

  // $('input[name="nome"]').mask('SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS');

  let value = document.getElementById("assunto").value;
  let re = /^[a-zA-ZéúíóáÉÚÍÓÁèùìòàçÇÈÙÌÒÀõãñÕÃÑêûîôâÊÛÎÔÂëÿüïöäËYÜÏÖÄ\-\ \s]+$/; 
  //value == "" || value == null

  if (!re.test(value)) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Assunto não informado');
    document.form_cliente.asunto.focus();
    return false;
  }
  return true;
}

//Validar CPF
function validar_cpf() {
  
  $('input[name="cpf"]').mask('00000000000');
 
  let value = document.getElementById("cpf").value;
  
  if (value == "" || value == null || TestaCPF(value) == false ) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('CPF não informado ou inválido');
    document.form_cliente.cpf.focus();
    return false;
  } 
  return true;
  }



//Validar telefone
function validar_tel() {

  $('input[name="tel"]').mask('(00) 0000-0000');
  
  let value = document.getElementById("tel").value;
  
  if (value == "" || value == null) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Telefone não informado');
    document.form_cliente.tel.focus();
    return false;
  }
  return true;
}

//Validar celular
function validar_cel() {

  $('input[name="cel"]').mask('(00) 00000-0000');
  
  let value = document.getElementById("cel").value;
  
  if (value == "" || value == null) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Celular não informado');
    document.form_cliente.cel.focus();
    return false;
  }
  return true;
}

//Validar CEP
function validar_cep() {

  $('input[name="cep"]').mask('00000-000');
  
  let value = document.getElementById("cep").value;
  
  if (value == "" || value == null) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('CEP não informado');
    document.form_cliente.cep.focus();
    return false;
  }
  return true;
}


//Validar CEP
function validar_num() {

  $('input[name="num"]').mask('00000');
  
  let value = document.getElementById("num").value;
  
  if (value == "" || value == null) {
    // campo inválido, retorna false para o formulário não ser submetido
    alert('Numero não informado');
    document.form_cliente.num.focus();
    return false;
  }
  return true;
}


// Pesquisa CEP -----------------

function limpa_formulário_cep() {
  //Limpa valores do formulário de cep.
  document.getElementById('rua').value=("");
  document.getElementById('bairro').value=("");
  document.getElementById('cidade').value=("");
  document.getElementById('uf').value=("");
}

function meu_callback(conteudo) {
if (!("erro" in conteudo)) {
  //Atualiza os campos com os valores.
  document.getElementById('rua').value=(conteudo.logradouro);
  document.getElementById('bairro').value=(conteudo.bairro);
  document.getElementById('cidade').value=(conteudo.localidade);
  document.getElementById('uf').value=(conteudo.uf);
} //end if.
else {
  //CEP não Encontrado.
  limpa_formulário_cep();
  alert("CEP não encontrado.");
  document.form_cliente.cep.focus();
}
}

function pesquisacep(valor) {

//Nova variável "cep" somente com dígitos.
var cep = valor.replace(/\D/g, '');

//Verifica se campo cep possui valor informado.
if (cep != "") {

  //Expressão regular para validar o CEP.
  var validacep = /^[0-9]{8}$/;

  //Valida o formato do CEP.
  if(validacep.test(cep)) {

      //Preenche os campos com "..." enquanto consulta webservice.
      document.getElementById('rua').value="...";
      document.getElementById('bairro').value="...";
      document.getElementById('cidade').value="...";
      document.getElementById('uf').value="...";

      //Cria um elemento javascript.
      var script = document.createElement('script');

      //Sincroniza com o callback.
      script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

      //Insere script no documento e carrega o conteúdo.
      document.body.appendChild(script);

  } //end if.
  else {
      //cep é inválido.
      limpa_formulário_cep();
      alert("Formato de CEP inválido.");
      document.form_cliente.cep.focus();
  }
} //end if.
else {
  //cep sem valor, limpa formulário.
  limpa_formulário_cep();
}
};
// -----------------------------------------------

function validar_tudo() {
  // se um deles for inválido, retorna false e o form não é submetido
  if (validar_nome() && validar_cel() && validar_assunto() && validar_email())
            {
            document.getElementById('enviar').removeAttribute('disabled'); // ativar botao cadastrar
            alert("Tudo certo. Proximo passo Enviar E-mail");
          }
        else
          {
          return false;
          }
}

function validar_area() {
  // se um deles for inválido, retorna false e o form não é submetido
  if (validar_pass() && validar_cnpj)
            {
          return true;
          }
        else
          {
          return false;
          }
}

// -----------------------------------------------

function encerra(){
  // capturar formularo em formato Json
  var formData = JSON.stringify($("#form_cliente").serializeArray()); 

 
  let nome_c = document.getElementById("nome").value;

  
  alert( nome_c + '\n' +  'Cadastro Realizado');
  
  alert("Json : "+ formData );

}

// -Validar CPF - ---------------------------------------

function TestaCPF(strCPF) {
  var Soma;
  var Resto;
  Soma = 0;
if (strCPF == "00000000000") return false;

for (i=1; i<=9; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (11 - i);
Resto = (Soma * 10) % 11;

  if ((Resto == 10) || (Resto == 11))  Resto = 0;
  if (Resto != parseInt(strCPF.substring(9, 10)) ) return false;

Soma = 0;
  for (i = 1; i <= 10; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (12 - i);
  Resto = (Soma * 10) % 11;

  if ((Resto == 10) || (Resto == 11))  Resto = 0;
  if (Resto != parseInt(strCPF.substring(10, 11) ) ) return false;
  return true;
}

function envio_email() {
  alert("paasei");
  let nome = document.getElementById("nome").value;

  if (nome != "") {
      alert('Obrigado sr(a) ' + nome + ' os seus dados foram encaminhados com sucesso');
  }

}