
package MODEL;


   
  public class Usuario {
   
      private Integer Matricula;
      private String Nome;
      private String Nome_Curso;
      private String Email;
      private String Password;
     
   public Usuario(){}
   public Usuario(int Matricula){
       this.Matricula=Matricula;
   }
    
    public Usuario(Integer Matricula,String Nome,String Nome_Curso,String Email,String Password){
        this.Matricula=Matricula;
        this.Nome=Nome;
        this.Nome_Curso=Nome_Curso;
        this.Email=Email;
        this.Password=Password;
}
          
    public Integer getMatricula() {
        return Matricula;
    }

    
    public void setMatricula(Integer matricula) {
        this.Matricula = matricula;
    }

    
    public String getNome() {
        return Nome;
    }

    
    public void setNome(String nome) {
        this.Nome = nome;
    }

    
    public String getCurso() {
        return Nome_Curso;
    }

    
    public void setCurso(String curso) {
        this.Nome_Curso = curso;
    }

    
    public String getEmail() {
        return Email;
    }

    
    public void setEmail(String email) {
        this.Email = email;
    }

    
    public String getPassword() {
        return Password;
    }

    
    public void setPassword(String Password) {
        this.Password = Password;
    }
  }