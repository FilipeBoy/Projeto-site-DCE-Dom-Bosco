/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

/**
 *
 * @author filip
 */
public class Perdido {
    private int ID_Perdido;
    private int Matricula_Usuario;
    private String NomeObjeto;
    private String LocalPerda;
    private String Descricao;

    public int getID_Perdido() {
        return ID_Perdido;
    }

    public void setID_Perdido(int ID_Perdido) {
        this.ID_Perdido = ID_Perdido;
    }

    public int getMatricula_Usuario() {
        return Matricula_Usuario;
    }

    public void setMatricula_Usuario(int Matricula_Usuario) {
        this.Matricula_Usuario = Matricula_Usuario;
    }

    public String getNomeObjeto() {
        return NomeObjeto;
    }

    public void setNomeObjeto(String NomeObjeto) {
        this.NomeObjeto = NomeObjeto;
    }

    public String getDescricao() {
        return Descricao;
    }

    public void setDescricao(String Descricao) {
        this.Descricao = Descricao;
    }

    public String getLocalPerda() {
        return LocalPerda;
    }

    public void setLocalPerda(String LocalPerda) {
        this.LocalPerda = LocalPerda;
    }
}
