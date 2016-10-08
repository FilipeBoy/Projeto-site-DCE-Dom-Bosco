
package DAO;

import MODEL.Sugestao;
import MODEL.ConexaoMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SugestaoDAO {
    public void salvar(Sugestao sugestao) throws SQLException{
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO DCE_Sugestao(Data,Status,Assunto,Descricao) values(?, ?, ?, ?)");
        
        try{
            ConexaoMySQL.getConexaoMySQL();
            java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
            comando.setString(1, sugestao.getData());
            comando.setString(2, sugestao.getStatus());
            comando.setString(3, sugestao.getAssunto());
            comando.setString(4, sugestao.getDescricao());
            
            comando.executeUpdate();
        }catch (SQLException e) {
            System.out.println("Não foi possivel inserir!");
	}
    }
    
    public void editar(Sugestao sugestao) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE DCE_Sugestao SET Data = ?, Status = ?, Assunto = ?, Descricao = ? WHERE ID_Perdido = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setString(1, sugestao.getData());
	comando.setString(2, sugestao.getStatus());
	comando.setString(3, sugestao.getAssunto());
	comando.setString(4, sugestao.getDescricao());
	
	comando.executeUpdate();
    }
    
    public void excluir(Sugestao sugestao) throws SQLException {
		StringBuilder sql = new StringBuilder();

		sql.append("DELETE FROM DCE_Sugestao ");
		sql.append("WHERE ID_Sugestao = ? ");

		ConexaoMySQL.getConexaoMySQL();

		java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, sugestao.getID_Sugestao());

		comando.executeUpdate();
    }
    
    // PESQUISA SIMPLES
    public Sugestao buscarPorMatricula(Sugestao sugestao) throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT ID_Sugestao, Data,Status,Assunto,Descricao");
		sql.append("FROM DCE_Sugestao ");
		sql.append("WHERE ID_Sugestao = ? ");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, sugestao.getID_Sugestao());

		ResultSet resultado = comando.executeQuery();

		Sugestao retorno = null;

		// if porque sabemos que somente tem um que e o proximo, senao usaria
		// while
		while (resultado.next()) {
			retorno = new Sugestao();
			retorno.setID_Sugestao(resultado.getInt("ID_Sugestao"));
			retorno.setData(resultado.getString("Data"));
			retorno.setStatus(resultado.getString("Status"));
			retorno.setAssunto(resultado.getString("Assunto"));
			retorno.setDescricao(resultado.getString("Descricao"));
		}
        return retorno;
	}
    
    // PESQUISA_LISTA
	public List<Sugestao> listar() throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM DCE_Sugestao ORDER BY ID_Sugestao ASC");

		ConexaoMySQL.getConexaoMySQL();
                PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
                ResultSet resultado = comando.executeQuery();
                List<Sugestao> lista = new ArrayList<Sugestao>();

		while (resultado.next()) {
			Sugestao sugestao = new Sugestao();
			sugestao.setID_Sugestao(resultado.getInt("ID_Sugestao"));
			sugestao.setData(resultado.getString("Data"));
			sugestao.setStatus(resultado.getString("Status"));
			sugestao.setAssunto(resultado.getString("Assunto"));
			sugestao.setDescricao(resultado.getString("Descricao"));

			lista.add(sugestao);
		}

		return lista;
	}
}