/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import MODEL.Armario;
import MODEL.ConexaoMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author filip
 */
public class ArmarioDAO {
    
    public void salvar(Armario Arm) throws SQLException{
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO DCE_Armario(MatriculaUsuario,NomeUsuario,DataInicio,DataFim) values(?, ?, ?, ?)");
        
        try{
            ConexaoMySQL.getConexaoMySQL();
            java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
            comando.setInt(1, Arm.getMatriculaUsuario());
            comando.setString(2, Arm.getNomeUsuario());
            comando.setString(3, Arm.getDataInicio());
            comando.setString(4, Arm.getDataFim());
            
            comando.executeUpdate();
        }catch (SQLException e) {
            System.out.println("Não foi possivel inserir!");
	}
    }
    
    public void editar(Armario Arm) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE DCE_Armario SET MatriculaUsuario = ?, NomeUsuario = ?, DataInicio = ?, DataFim = ? WHERE NroRegistro = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setInt(1, Arm.getMatriculaUsuario());
	comando.setString(2, Arm.getNomeUsuario());
	comando.setString(3, Arm.getDataInicio());
	comando.setString(4, Arm.getDataFim());
	
	comando.executeUpdate();
    }
    
    public void excluir(Armario Arm) throws SQLException {
		StringBuilder sql = new StringBuilder();

		sql.append("DELETE FROM DCE_Armario ");
		sql.append("WHERE NroRegistro = ? ");

		ConexaoMySQL.getConexaoMySQL();

		java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, Arm.getNroRegistro());

		comando.executeUpdate();
    }
    
    // PESQUISA SIMPLES
    public Armario buscarPorMatricula(Armario Arm) throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT NroRegistro, MatriculaUsuario, NomeUsuario, DataInicio,DataFim ");
		sql.append("FROM DCE_Armario ");
		sql.append("WHERE MatriculaUsuario = ? ");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
		comando.setInt(1, Arm.getMatriculaUsuario());

		ResultSet resultado = comando.executeQuery();

		Armario retorno = null;

		// if porque sabemos que somente tem um que e o proximo, senao usaria
		// while
		while (resultado.next()) {
			retorno = new Armario();
			retorno.setNroRegistro(resultado.getInt("NroRegistro"));
			retorno.setMatriculaUsuario(resultado.getInt("MatriculaUsuario"));
			retorno.setNomeUsuario(resultado.getString("NomeUsuario"));
			retorno.setDataInicio(resultado.getString("DataInicio"));
			retorno.setDataFim(resultado.getString("DataFim"));
		}
        return retorno;
	}
    
    // PESQUISA_LISTA
	public List<Armario> listar() throws SQLException {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT * FROM DCE_Armario ORDER BY NroRegistro ASC");

		ConexaoMySQL.getConexaoMySQL();

		PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());

		ResultSet resultado = comando.executeQuery();

		List<Armario> lista = new ArrayList<Armario>();

		while (resultado.next()) {
			Armario Arm = new Armario();
			Arm.setNroRegistro(resultado.getInt("NroRegistro"));
			Arm.setMatriculaUsuario(resultado.getInt("MatriculaUsuario"));
			Arm.setNomeUsuario(resultado.getString("NomeUsuario"));
			Arm.setDataInicio(resultado.getString("DataInicio"));
			Arm.setDataFim(resultado.getString("DataFim"));

			lista.add(Arm);
		}

		return lista;
	}
}
