package dto;

public class Board {

	private int bno;
	private String bworkno; // 작업지시번호
	private String bmaterial; // 재료준비
	private String bprint; // 인쇄준비
	private String bcoating; // 코팅준비
	private String bpaper; // 합지준비
	private String bjoin; // 접합준비
	private String bpackaging;// 포장공정
	private String bdate; // 최종작업일자
	private String btime; // 최종작업시간
	

	public Board() {
	}

	public Board(int bno, String bworkno, String bmaterial, String bprint, String bcoating, String bpaper, String bjoin,
			String bpackaging, String bdate, String btime) {
		this.bno = bno;
		this.bworkno = bworkno;
		this.bmaterial = bmaterial;
		this.bprint = bprint;
		this.bcoating = bcoating;
		this.bpaper = bpaper;
		this.bjoin = bjoin;
		this.bpackaging = bpackaging;
		this.bdate = bdate;
		this.btime = btime;
	}
	// 게시물 작성
	public Board( String bworkno, String bmaterial, String bprint, String bcoating, String bpaper, String bjoin,
			String bpackaging, String bdate, String btime) {
		this.bworkno = bworkno;
		this.bmaterial = bmaterial;
		this.bprint = bprint;
		this.bcoating = bcoating;
		this.bpaper = bpaper;
		this.bjoin = bjoin;
		this.bpackaging = bpackaging;
		this.bdate = bdate;
		this.btime = btime;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBworkno() {
		return bworkno;
	}

	public void setBworkno(String bworkno) {
		this.bworkno = bworkno;
	}

	public String getBmaterial() {
		return bmaterial;
	}

	public void setBmaterial(String bmaterial) {
		this.bmaterial = bmaterial;
	}

	public String getBprint() {
		return bprint;
	}

	public void setBprint(String bprint) {
		this.bprint = bprint;
	}

	public String getBcoating() {
		return bcoating;
	}

	public void setBcoating(String bcoating) {
		this.bcoating = bcoating;
	}

	public String getBpaper() {
		return bpaper;
	}

	public void setBpaper(String bpaper) {
		this.bpaper = bpaper;
	}

	public String getBjoin() {
		return bjoin;
	}

	public void setBjoin(String bjoin) {
		this.bjoin = bjoin;
	}

	public String getBpackaging() {
		return bpackaging;
	}

	public void setBpackaging(String bpackaging) {
		this.bpackaging = bpackaging;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getBtime() {
		return btime;
	}

	public void setBtime(String btime) {
		this.btime = btime;
	}
	

	
	
	
	
	
}
