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
public class Noticia {
    private int ID_Noticia;
    private String Autor;
    private String Data;
    private String Titulo;
    private String Texto;

     public Noticia(){};
     
     public Noticia(String Titulo){
     this.Titulo=Titulo;
     };
    
    public Noticia(String Autor,String Data,String Titulo,String Texto){
        this.Autor=Autor;
        this.Data=Data;
        this.Titulo=Titulo;
        this.Texto=Texto;
}
    
    public Noticia(int ID_Noticia,String Autor,String Data,String Titulo,String Texto){
        this.Autor=Autor;
        this.Data=Data;
        this.Titulo=Titulo;
        this.Texto=Texto;
        this.ID_Noticia=ID_Noticia;
}
    
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

    public int getID_Noticia() {
        return ID_Noticia;
    }

    public void setID_Noticia(int ID_Noticia) {
        this.ID_Noticia = ID_Noticia;
    }
}
