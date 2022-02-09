package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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

	// 전체 게시물 조회
	public ArrayList<Board> boardlist() {
		ArrayList<Board> boards = new ArrayList<Board>();
		String sql = "select * from board";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Board board = new Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
						rs.getString(10));
				boards.add(board);
				System.out.print("번호 : " + board.getBworkno());
			}
			return boards;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

}
