package MODEL;

public class Sugestao {

    private int ID_Sugestao;
    private String data;
    private String Status;
    private String Assunto;
    private String Descricao;

    public Sugestao() {
    }

    public Sugestao(int ID_Sugestao) {
        this.ID_Sugestao = ID_Sugestao;
    }

    public Sugestao(String data, String Status, String Assunto, String Descricao) {
        this.Status = Status;
        this.data = data;
        this.Assunto = Assunto;
        this.Descricao = Descricao;
    }

    public Sugestao(int ID_Sugestao, String Status, String data, String Assunto, String Descricao) {
        this.Status = Status;
        this.data = data;
        this.Assunto = Assunto;
        this.Descricao = Descricao;
        this.ID_Sugestao = ID_Sugestao;
    }

    public int getID_Sugestao() {
        return ID_Sugestao;
    }

    public void setID_Sugestao(int ID_Sugestao) {
        this.ID_Sugestao = ID_Sugestao;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getAssunto() {
        return Assunto;
    }

    public void setAssunto(String Assunto) {
        this.Assunto = Assunto;
    }

    public String getDescricao() {
        return Descricao;
    }

    public void setDescricao(String Descricao) {
        this.Descricao = Descricao;
    }
}
