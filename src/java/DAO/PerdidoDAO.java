
package DAO;
import MODEL.Perdido;
import MODEL.ConexaoMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PerdidoDAO {
    public Perdido salvar(Perdido perdido) throws SQLException{
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO DCE_Perdido(Matricula_Usuario,NomeObjeto,LocalPerda,Descricao) values(?, ?, ?, ?)");
        
        try{
            ConexaoMySQL.getConexaoMySQL();
            java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
            comando.setInt(1, perdido.getMatricula_Usuario());
            comando.setString(2, perdido.getNomeObjeto());
            comando.setString(3, perdido.getLocalPerda());
            comando.setString(4, perdido.getDescricao());
            
            comando.executeUpdate();
        }catch (SQLException e) {
            System.out.println("Não foi possivel inserir!");
	}
        ConexaoMySQL.FecharConexao();
        Perdido retorno=buscarPorMatricula_Usuario(perdido);
        return retorno;
    }
    
    public void editar(Perdido perdido) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE DCE_Perdido SET Matricula_Usuario = ?, NomeObjeto = ?, LocalPerda = ?, Descricao = ? WHERE ID_Perdido = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setInt(1, perdido.getMatricula_Usuario());
	comando.setString(2, perdido.getNomeObjeto());
	comando.setString(3, perdido.getLocalPerda());
	comando.setString(4, perdido.getDescricao());
        comando.setInt(5, perdido.getID_Perdido());
	
	comando.executeUpdate();
        ConexaoMySQL.FecharConexao();
    }
    
    public void excluir(Perdido perdido) throws SQLException {
		StringBuilder sql = new StringBuilder();

		sql.append("DELETE FROM DCE_Perdido ");
		sql.append("WHERE ID_Perdido = ? ");

		ConexaoMySQL.getConexaoMySQL();

		java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, perdido.getID_Perdido());

		comando.executeUpdate();
                ConexaoMySQL.FecharConexao();
    }
     public Perdido buscarPorMatricula_Usuario(Perdido perdido) throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT ID_Perdido,Matricula_Usuario,NomeObjeto,LocalPerda,Descricao ");
		sql.append("FROM DCE_Perdido ");
		sql.append("WHERE Matricula_Usuario = ? ");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, perdido.getMatricula_Usuario());

		ResultSet resultado = comando.executeQuery();

		Perdido retorno = null;

		// if porque sabemos que somente tem um que e o proximo, senao usaria
		// while
		while (resultado.next()) {
			retorno = new Perdido();
			retorno.setID_Perdido(resultado.getInt("ID_Perdido"));
		}
                ConexaoMySQL.FecharConexao();
        return retorno;
	}
    
    // PESQUISA SIMPLES
    public Perdido buscarPorID_Perdido(Perdido perdido) throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT ID_Perdido,Matricula_Usuario,NomeObjeto,LocalPerda,Descricao ");
		sql.append("FROM DCE_Perdido ");
		sql.append("WHERE ID_Perdido = ? ");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, perdido.getID_Perdido());

		ResultSet resultado = comando.executeQuery();

		Perdido retorno = null;

		// if porque sabemos que somente tem um que e o proximo, senao usaria
		// while
		while (resultado.next()) {
			retorno = new Perdido();
			retorno.setID_Perdido(resultado.getInt("ID_Perdido"));
			retorno.setMatricula_Usuario(resultado.getInt("Matricula_Usuario"));
			retorno.setNomeObjeto(resultado.getString("NomeObjeto"));
			retorno.setLocalPerda(resultado.getString("LocalPerda"));
			retorno.setDescricao(resultado.getString("Descricao"));
                        
		}
                ConexaoMySQL.FecharConexao();
        return retorno;
	}
    
    // PESQUISA_LISTA
	public List<Perdido> listar() throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM DCE_Perdido ORDER BY ID_Perdido ASC");

		ConexaoMySQL.getConexaoMySQL();
                PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
                ResultSet resultado = comando.executeQuery();
                List<Perdido> lista = new ArrayList<Perdido>();

		while (resultado.next()) {
			Perdido perdido = new Perdido();
			perdido.setID_Perdido(resultado.getInt("ID_Perdido"));
			perdido.setMatricula_Usuario(resultado.getInt("Matricula_Usuario"));
			perdido.setNomeObjeto(resultado.getString("NomeObjeto"));
			perdido.setLocalPerda(resultado.getString("LocalPerda"));
			perdido.setDescricao(resultado.getString("Descricao"));

			lista.add(perdido);
		}
                ConexaoMySQL.FecharConexao();
		return lista;
	}
    
}
