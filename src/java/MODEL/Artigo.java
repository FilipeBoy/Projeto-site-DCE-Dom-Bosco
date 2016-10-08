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
public class Artigo {
    private int ID_Artigo;
    private String Autor;
    private String Data;
    private String Titulo;
    private String Texto;

    public String getAutor() {
        return Autor;
    }

    public void setAutor(String autor) {
        this.Autor = autor;
    }

    public String getData() {
        return Data;
    }

    public void setData(String data) {
        this.Data = data;
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String titulo) {
        this.Titulo = titulo;
    }

    public String getTexto() {
        return Texto;
    }

    public void setTexto(String texto) {
        this.Texto = texto;
    }

    public int getID_Artigo() {
        return ID_Artigo;
    }

    public void setID_Artigo(int ID_Artigo) {
        this.ID_Artigo = ID_Artigo;
    }
}
