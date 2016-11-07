package DAO;

import MODEL.Armario;
import MODEL.ConexaoMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ArmarioDAO {

    public Armario salvar(Armario Arm) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO DCE_Armario(MatriculaUsuario,NomeUsuario,DataInicio,DataFim) values(?, ?, ?, ?)");

        try {
            ConexaoMySQL.getConexaoMySQL();
            java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
            comando.setInt(1, Arm.getMatriculaUsuario());
            comando.setString(2, Arm.getNomeUsuario());
            comando.setString(3, Arm.getDataInicio());
            comando.setString(4, Arm.getDataFim());
            comando.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possivel inserir!");
        }
        ConexaoMySQL.FecharConexao();
        Armario retorno = buscarPorMatriculaUsuario(Arm);
        return retorno;
    }

    public void editar(Armario Arm) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE DCE_Armario SET MatriculaUsuario = ?, DataInicio = ?, DataFim = ?, NomeUsuario = ? WHERE NroRegistro = ?");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setInt(1, Arm.getMatriculaUsuario());
        comando.setString(2, Arm.getDataInicio());
        comando.setString(3, Arm.getDataFim());
        comando.setString(4, Arm.getNomeUsuario());
        comando.setInt(5, Arm.getNroRegistro());
        comando.executeUpdate();
        ConexaoMySQL.FecharConexao();
    }

    public void excluir(Armario Arm) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("DELETE FROM DCE_Armario ");
        sql.append("WHERE NroRegistro = ? ");
        ConexaoMySQL.getConexaoMySQL();
        java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setInt(1, Arm.getNroRegistro());
        comando.executeUpdate();
        ConexaoMySQL.FecharConexao();
    }

    public Armario buscarPorMatriculaUsuario(Armario Arm) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT NroRegistro, MatriculaUsuario, NomeUsuario, DataInicio,DataFim ");
        sql.append("FROM DCE_Armario ");
        sql.append("WHERE MatriculaUsuario = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setInt(1, Arm.getMatriculaUsuario());
        ResultSet resultado = comando.executeQuery();
        Armario retorno = null;
        while (resultado.next()) {
            retorno = new Armario();
            retorno.setNroRegistro(resultado.getInt("NroRegistro"));
        }
        ConexaoMySQL.FecharConexao();
        return retorno;
    }

    public Armario buscarPorNroRegistro(Armario Arm) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT NroRegistro, MatriculaUsuario, NomeUsuario, DataInicio,DataFim ");
        sql.append("FROM DCE_Armario ");
        sql.append("WHERE NroRegistro = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setInt(1, Arm.getNroRegistro());
        ResultSet resultado = comando.executeQuery();
        Armario retorno = null;
        while (resultado.next()) {
            retorno = new Armario();
            retorno.setNroRegistro(resultado.getInt("NroRegistro"));
            retorno.setMatriculaUsuario(resultado.getInt("MatriculaUsuario"));
            retorno.setNomeUsuario(resultado.getString("NomeUsuario"));
            retorno.setDataInicio(resultado.getString("DataInicio"));
            retorno.setDataFim(resultado.getString("DataFim"));
        }
        ConexaoMySQL.FecharConexao();
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
        ConexaoMySQL.FecharConexao();
        return lista;
    }
}
