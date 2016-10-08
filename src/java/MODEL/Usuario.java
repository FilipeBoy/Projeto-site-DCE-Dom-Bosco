/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;


   
  public class Usuario {
   
      private Integer Matricula;
      private String Nome;
      private String Nome_Curso;
      private String Email;
      private String Password;
     
   
          
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