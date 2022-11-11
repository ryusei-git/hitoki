package dao;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.Quiz;

public class QuizDAO {

	private static Connection getConnection() throws URISyntaxException, SQLException {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    URI dbUri = new URI(System.getenv("DATABASE_URL"));

	    String username = dbUri.getUserInfo().split(":")[0];
	    String password = dbUri.getUserInfo().split(":")[1];
	    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

	    return DriverManager.getConnection(dbUrl, username, password);
	}
	
	
	
	//-問題登録------------------------------------
	public static int registerQuiz(Quiz quiz) {
		String sql = "INSERT INTO quiz (question, answer) VALUES(?, ?)";
		int result = 0;
		
		try (
				Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			pstmt.setString(1, quiz.getQuestion());
			pstmt.setString(2, quiz.getAnswer());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		} finally {
			System.out.println(result + "件更新しました。");
		}
		return result;
	}

	//---------------------------問題一覧-----------------------------
public static List<Quiz> selectAll(){
	// 返却用変数
	List<Quiz> result = new ArrayList<>();

	String sql = "SELECT * FROM quiz";
	
	try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			){
		try (ResultSet rs = pstmt.executeQuery()){
			while(rs.next()) {
				String Question = rs.getString("Question");
				String Answer = rs.getString("Answer");

				Quiz quiz = new Quiz(Question, Answer);
				
				result.add(quiz);
			}
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (URISyntaxException e1) {
		// TODO 自動生成された catch ブロック
		e1.printStackTrace();
	}

	return result;
}
//-----------------問題削除-----------------------------------
public static int deleteQ(int no){
	// 返却用変数
	String sql = "DELETE FROM quiz WHERE id = ?";	
	int result = 0;
	try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			){
		pstmt.setInt(1,no);

		result = pstmt.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (URISyntaxException e) {
		e.printStackTrace();
	} finally {
		System.out.println(result + "件更新しました。");
	}
	return result;
}
//----------------簡易回答-------------------------
public static List<Quiz> startQ(){
	// 返却用変数
	List<Quiz> result = new ArrayList<>();

	String sql = "SELECT * FROM quiz";
	
	try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			){
		try (ResultSet rs = pstmt.executeQuery()){
			while(rs.next()) {
				String Question = rs.getString("Question");
				String Answer = rs.getString("Answer");

				Quiz quiz = new Quiz(Question, Answer);
				
				result.add(quiz);
			}
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (URISyntaxException e1) {
		// TODO 自動生成された catch ブロック
		e1.printStackTrace();
	}

	return result;
}
}