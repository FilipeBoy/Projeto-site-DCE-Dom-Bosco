package DAO;

import MODEL.Curso;
import MODEL.ConexaoMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CursoDAO {

    public void salvar(Curso curso) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("INSERT INTO DCE_Curso(Nome_Curso,Horario,CargaHoraria,Descricao) values(?, ?, ?, ?)");

        try {
            ConexaoMySQL.getConexaoMySQL();
            java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
            comando.setString(1, curso.getNome_Curso());
            comando.setString(2, curso.getHorario());
            comando.setString(3, curso.getCargaHoraria());
            comando.setString(4, curso.getDescricao());
            comando.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possivel inserir!");
        }
        ConexaoMySQL.FecharConexao();
    }

    public void editar(Curso curso) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("UPDATE DCE_Curso SET Nome_Curso = ?, Horario = ?, CargaHoraria = ?, Descricao = ? WHERE ID_Curso = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setString(1, curso.getNome_Curso());
        comando.setString(2, curso.getHorario());
        comando.setString(3, curso.getCargaHoraria());
        comando.setString(4, curso.getDescricao());
        comando.setInt(5, curso.getID_Curso());
        comando.executeUpdate();
        ConexaoMySQL.FecharConexao();
    }

    public void excluir(Curso curso) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("DELETE FROM DCE_Curso ");
        sql.append("WHERE ID_Curso = ? ");
        ConexaoMySQL.getConexaoMySQL();
        java.sql.PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setInt(1, curso.getID_Curso());
        comando.executeUpdate();
        ConexaoMySQL.FecharConexao();
    }

    // PESQUISA SIMPLES
    public Curso buscarPorID_Curso(Curso curso) throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT ID_Curso, Nome_Curso,Horario,CargaHoraria,Descricao ");
        sql.append("FROM DCE_Curso ");
        sql.append("WHERE ID_Curso = ? ");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        comando.setInt(1, curso.getID_Curso());
        ResultSet resultado = comando.executeQuery();
        Curso retorno = null;
        while (resultado.next()) {
            retorno = new Curso();
            retorno.setID_Curso(resultado.getInt("ID_Curso"));
            retorno.setNome_Curso(resultado.getString("Nome_Curso"));
            retorno.setHorario(resultado.getString("Horario"));
            retorno.setCargaHoraria(resultado.getString("CargaHoraria"));
            retorno.setDescricao(resultado.getString("Descricao"));
        }
        ConexaoMySQL.FecharConexao();
        return retorno;
    }

    // PESQUISA_LISTA
    public List<Curso> listar() throws SQLException {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT * FROM DCE_Curso ORDER BY ID_Curso ASC");
        ConexaoMySQL.getConexaoMySQL();
        PreparedStatement comando = ConexaoMySQL.connection.prepareStatement(sql.toString());
        ResultSet resultado = comando.executeQuery();
        List<Curso> lista = new ArrayList<Curso>();
        while (resultado.next()) {
            Curso curso = new Curso();
            curso.setID_Curso(resultado.getInt("ID_Curso"));
            curso.setNome_Curso(resultado.getString("Nome_Curso"));
            curso.setHorario(resultado.getString("Horario"));
            curso.setCargaHoraria(resultado.getString("CargaHoraria"));
            curso.setDescricao(resultado.getString("Descricao"));
            lista.add(curso);
        }
        ConexaoMySQL.FecharConexao();
        return lista;
    }

}
