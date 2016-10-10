
package DAO;

import MODEL.Noticia;
import MODEL.ConexaoMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NoticiaDAO {
    public void salvar(Noticia noticia) throws SQLException{
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO DCE_Artigo(Autor,Data,Titulo,Texto) values(?, ?, ?, ?)");
        
        try{
            ConexaoMySQL.getConexaoMySQL();
            java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
            comando.setString(1, noticia.getAutor());
            comando.setString(2, noticia.getData());
            comando.setString(3, noticia.getTitulo());
            comando.setString(4, noticia.getTexto());
            
            comando.executeUpdate();
        }catch (SQLException e) {
            System.out.println("Não foi possivel inserir!");
	}
    }
    
    public void editar(Noticia noticia) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE DCE_Artigo SET Autor = ?, Data = ?, Titulo = ?, Texto = ? WHERE ID_Artigo = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setString(1, noticia.getAutor());
	comando.setString(2, noticia.getData());
	comando.setString(3, noticia.getTitulo());
	comando.setString(4, noticia.getTexto());
	
	comando.executeUpdate();
    }
    
    public void excluir(Noticia noticia) throws SQLException {
		StringBuilder sql = new StringBuilder();

		sql.append("DELETE FROM DCE_Artigo ");
		sql.append("WHERE ID_Artigo = ? ");

		ConexaoMySQL.getConexaoMySQL();

		java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, noticia.getID_Artigo());

		comando.executeUpdate();
    }
    
    // PESQUISA SIMPLES
    public Noticia buscarPorMatricula(Noticia noticia) throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT ID_Artigo, Autor,Data,Titulo,Texto ");
		sql.append("FROM DCE_Artigo ");
		sql.append("WHERE ID_Artigo = ? ");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, noticia.getID_Artigo());

		ResultSet resultado = comando.executeQuery();

		Noticia retorno = null;

		// if porque sabemos que somente tem um que e o proximo, senao usaria
		// while
		while (resultado.next()) {
			retorno = new Noticia();
			retorno.setID_Artigo(resultado.getInt("ID_Artigo"));
			retorno.setAutor(resultado.getString("Autor"));
			retorno.setData(resultado.getString("Data"));
			retorno.setTitulo(resultado.getString("Titulo"));
			retorno.setTexto(resultado.getString("Texto"));
		}
        return retorno;
	}
    
    // PESQUISA_LISTA
	public List<Noticia> listar() throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM DCE_Artigo ORDER BY ID_Artigo ASC");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());

		ResultSet resultado = comando.executeQuery();

		List<Noticia> lista = new ArrayList<Noticia>();

		while (resultado.next()) {
			Noticia Art = new Noticia();
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
