package pages;


import org.openqa.selenium.By;
import runner.RunCucumber;

import static support.Commands.*;

public class CadastroUsuarioPage extends RunCucumber {

    // elementos
    private By campoNome = By.id("user");
    private By campoEmail = By.id("email");
    private By campoSenha = By.id("password");
    private By botaoFazerCadastro= By.id("btnRegister");

    // ações / funções / métodos
    public void preencheNome(String nome){

        filField(campoNome, nome);
    }
    public void preencheEmail(String email){

        filField(campoEmail, email);
    }
    public void preencherSenha(String senha){

        filField(campoSenha, senha);
    }
    public void cadastrarUsuario(){

        clickElement(botaoFazerCadastro);
    }
    public void verificaCadastroSucesso(){

        checkMessage(By.id("swal2-title"),"Cadastro realizado!");
    }
}
