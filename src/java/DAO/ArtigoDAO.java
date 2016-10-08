
package DAO;

import MODEL.Artigo;
import MODEL.ConexaoMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ArtigoDAO {
    public void salvar(Artigo Art) throws SQLException{
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO DCE_Artigo(Autor,Data,Titulo,Texto) values(?, ?, ?, ?)");
        
        try{
            ConexaoMySQL.getConexaoMySQL();
            java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
            comando.setString(1, Art.getAutor());
            comando.setString(2, Art.getData());
            comando.setString(3, Art.getTitulo());
            comando.setString(4, Art.getTexto());
            
            comando.executeUpdate();
        }catch (SQLException e) {
            System.out.println("Não foi possivel inserir!");
	}
    }
    
    public void editar(Artigo Art) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE DCE_Artigo SET Autor = ?, Data = ?, Titulo = ?, Texto = ? WHERE ID_Artigo = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setString(1, Art.getAutor());
	comando.setString(2, Art.getData());
	comando.setString(3, Art.getTitulo());
	comando.setString(4, Art.getTexto());
	
	comando.executeUpdate();
    }
    
    public void excluir(Artigo Art) throws SQLException {
		StringBuilder sql = new StringBuilder();

		sql.append("DELETE FROM DCE_Artigo ");
		sql.append("WHERE ID_Artigo = ? ");

		ConexaoMySQL.getConexaoMySQL();

		java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, Art.getID_Artigo());

		comando.executeUpdate();
    }
    
    // PESQUISA SIMPLES
    public Artigo buscarPorMatricula(Artigo Art) throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT ID_Artigo, Autor,Data,Titulo,Texto ");
		sql.append("FROM DCE_Artigo ");
		sql.append("WHERE ID_Artigo = ? ");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, Art.getID_Artigo());

		ResultSet resultado = comando.executeQuery();

		Artigo retorno = null;

		// if porque sabemos que somente tem um que e o proximo, senao usaria
		// while
		while (resultado.next()) {
			retorno = new Artigo();
			retorno.setID_Artigo(resultado.getInt("ID_Artigo"));
			retorno.setAutor(resultado.getString("Autor"));
			retorno.setData(resultado.getString("Data"));
			retorno.setTitulo(resultado.getString("Titulo"));
			retorno.setTexto(resultado.getString("Texto"));
		}
        return retorno;
	}
    
    // PESQUISA_LISTA
	public List<Artigo> listar() throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM DCE_Artigo ORDER BY ID_Artigo ASC");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());

		ResultSet resultado = comando.executeQuery();

		List<Artigo> lista = new ArrayList<Artigo>();

		while (resultado.next()) {
			Artigo Art = new Artigo();
			Art.setID_Artigo(resultado.getInt("ID_Artigo"));
			Art.setAutor(resultado.getString("Autor"));
			Art.setData(resultado.getString("Data"));
			Art.setTitulo(resultado.getString("Titulo"));
			Art.setTexto(resultado.getString("Texto"));

			lista.add(Art);
		}

		return lista;
	}
}
