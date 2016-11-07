
package MODEL;


public class Armario {
    private int NroRegistro;
    private int MatriculaUsuario;
    private String NomeUsuario;
    private String DataInicio;
    private String DataFim;
    
     public Armario (){}
     
     public Armario (int MatriculaUsuario){
        this.MatriculaUsuario=MatriculaUsuario;
}
    
    public Armario (int MatriculaUsuario,String NomeUsuario,String DataInicio,String DataFim){
        this.MatriculaUsuario=MatriculaUsuario;
        this.NomeUsuario=NomeUsuario;
        this.DataInicio=DataInicio;
        this.DataFim=DataFim;
                
}
    public Armario (int NroRegistro,int MatriculaUsuario,String NomeUsuario,String DataInicio,String DataFim){
        this.MatriculaUsuario=MatriculaUsuario;
        this.NomeUsuario=NomeUsuario;
        this.DataInicio=DataInicio;
        this.DataFim=DataFim;
        this.NroRegistro=NroRegistro;        
}

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
