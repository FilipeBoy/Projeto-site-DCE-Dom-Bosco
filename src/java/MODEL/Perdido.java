package MODEL;

public class Perdido {

    private int ID_Perdido;
    private int Matricula_Usuario;
    private String NomeObjeto;
    private String LocalPerda;
    private String Descricao;

    public Perdido() {
    }

    public Perdido(int Matricula_Usuario) {
        this.Matricula_Usuario = Matricula_Usuario;
    }

    public Perdido(int Matricula_Usuario, String NomeObjeto, String LocalPerda, String Descricao) {
        this.Matricula_Usuario = Matricula_Usuario;
        this.NomeObjeto = NomeObjeto;
        this.LocalPerda = LocalPerda;
        this.Descricao = Descricao;
    }

    public Perdido(int ID_Perdido, int Matricula_Usuario, String NomeObjeto, String LocalPerda, String Descricao) {
        this.Matricula_Usuario = Matricula_Usuario;
        this.NomeObjeto = NomeObjeto;
        this.LocalPerda = LocalPerda;
        this.Descricao = Descricao;
        this.ID_Perdido = ID_Perdido;
    }

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
