package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.Board;

public class BoardDao {

	private Connection con;
	private ResultSet rs;
	private PreparedStatement ps;

	public BoardDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/smartfactory?serverTimezone=UTC", "root",
					"1234");
			System.out.println("[연동 성공]");

		} catch (Exception e) {
			System.out.println("[연동 실패]");
		}
	}

	public static BoardDao boarddao = new BoardDao();

	public static BoardDao getboarddao() {
		return boarddao;
	}

	// 게시물 작성
	public boolean boardwrite(Board board) {

		String sql = "insert into board( bworkno , bmaterial , bprint , bcoating, bpaper, bjoin, bpackaging, bdate, btime) values(?,?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getBworkno());
			ps.setString(2, board.getBmaterial());
			ps.setString(3, board.getBprint());
			ps.setString(4, board.getBcoating());
			ps.setString(5, board.getBpaper());
			ps.setString(6, board.getBjoin());
			ps.setString(7, board.getBpackaging());
			ps.setString(8, board.getBdate());
			ps.setString(9, board.getBtime());
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;

	}
}
