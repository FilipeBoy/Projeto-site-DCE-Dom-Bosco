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
public class Curso {
    
    private int ID_Curso;
    private String Nome_Curso;
    private String Horario;
    private String CargaHoraria;
    private String Descricao;
    
    public Curso(){};
    
    public Curso(String Nome_Curso,String Horario,String CargaHoraria,String Descricao){
        this.Nome_Curso=Nome_Curso;
        this.Horario=Horario;
        this.CargaHoraria=CargaHoraria;
        this.Descricao=Descricao;
}

    public int getID_Curso() {
        return ID_Curso;
    }

    public void setID_Curso(int ID_Curso) {
        this.ID_Curso = ID_Curso;
    }

    public String getNome_Curso() {
        return Nome_Curso;
    }

    public void setNome_Curso(String Nome_Curso) {
        this.Nome_Curso = Nome_Curso;
    }

    public String getHorario() {
        return Horario;
    }

    public void setHorario(String Horario) {
        this.Horario = Horario;
    }

    public String getCargaHoraria() {
        return CargaHoraria;
    }

    public void setCargaHoraria(String CargaHoraria) {
        this.CargaHoraria = CargaHoraria;
    }

    public String getDescricao() {
        return Descricao;
    }

    public void setDescricao(String Drescricao) {
        this.Descricao = Drescricao;
    }
}
