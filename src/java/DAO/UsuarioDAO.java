
package DAO;

import MODEL.Usuario;
import MODEL.ConexaoMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class UsuarioDAO {
    
    public void salvar(Usuario user) throws SQLException{
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO DCE_Usuario(Matricula,Nome,Curso,Email,Password) values(?, ?, ?, ?,?)");
        
        try{
            ConexaoMySQL.getConexaoMySQL();
            java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
            comando.setInt(1, user.getMatricula());
            comando.setString(2, user.getNome());
            comando.setString(3, user.getCurso());
            comando.setString(4, user.getEmail());
            comando.setString(5, user.getPassword());
            
            comando.executeUpdate();
        }catch (SQLException e) {
            System.out.println("Não foi possivel inserir!");
	}
    }
    
    public void editar(Usuario user) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE DCE_Usuario SET Nome = ?, Curso = ?, Email = ?, Password = ? WHERE Matricula = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setString(1, user.getNome());
	comando.setString(2, user.getCurso());
	comando.setString(3, user.getEmail());
        comando.setString(4, user.getPassword());
	comando.setInt(5, user.getMatricula());
        
	comando.executeUpdate();
    }
    
    public void excluir(Usuario user) throws SQLException {
		StringBuilder sql = new StringBuilder();

		sql.append("DELETE FROM DCE_Usuario ");
		sql.append("WHERE Matricula = ? ");

		ConexaoMySQL.getConexaoMySQL();

		java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, user.getMatricula());

		comando.executeUpdate();
    }
    
    // PESQUISA SIMPLES
    public Usuario buscarPorMatricula(Usuario user) throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT Matricula, Nome,Curso,Email,Password ");
		sql.append("FROM DCE_Usuario ");
		sql.append("WHERE Matricula = ? ");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, user.getMatricula());

		ResultSet resultado = comando.executeQuery();

		Usuario retorno = null;

		// if porque sabemos que somente tem um que e o proximo, senao usaria
		// while
		while (resultado.next()) {
			retorno = new Usuario();
			retorno.setMatricula(resultado.getInt("Matricula"));
			retorno.setNome(resultado.getString("Nome"));
			retorno.setCurso(resultado.getString("Curso"));
			retorno.setEmail(resultado.getString("Email"));
			retorno.setPassword(resultado.getString("Password"));
		}
        return retorno;
	}
    
    // PESQUISA_LISTA
	public List<Usuario> listar() throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM DCE_Usuario ORDER BY Matricula ASC");

		ConexaoMySQL.getConexaoMySQL();
                PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
                ResultSet resultado = comando.executeQuery();
                List<Usuario> lista = new ArrayList<Usuario>();

		while (resultado.next()) {
			Usuario user = new Usuario();
			user.setMatricula(resultado.getInt("Matricula"));
			user.setNome(resultado.getString("Nome"));
			user.setCurso(resultado.getString("Curso"));
			user.setEmail(resultado.getString("Email"));
			user.setPassword(resultado.getString("Password"));

			lista.add(user);
		}

		return lista;
	}
}
