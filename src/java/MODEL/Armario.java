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
public class Armario {
    private int NroRegistro;
    private int MatriculaUsuario;
    private String NomeUsuario;
    private String DataInicio;
    private String DataFim;

    public int getNroRegistro() {
        return NroRegistro;
    }

    public void setNroRegistro(int NroRegistro) {
        this.NroRegistro = NroRegistro;
    }

    public int getMatriculaUsuario() {
        return MatriculaUsuario;
    }

    public void setMatriculaUsuario(int MatriculaUsuario) {
        this.MatriculaUsuario = MatriculaUsuario;
    }

    public String getNomeUsuario() {
        return NomeUsuario;
    }

    public void setNomeUsuario(String NomeUsuario) {
        this.NomeUsuario = NomeUsuario;
    }

    public String getDataInicio() {
        return DataInicio;
    }

    public void setDataInicio(String DataInicio) {
        this.DataInicio = DataInicio;
    }

    public String getDataFim() {
        return DataFim;
    }

    public void setDataFim(String DataFim) {
        this.DataFim = DataFim;
    }
    
}