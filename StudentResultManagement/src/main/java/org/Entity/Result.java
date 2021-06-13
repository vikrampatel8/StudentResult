package org.Entity;

public class Result {
	private String usn;
	private int ss;
	private int cg;
	private int web;
	private int maths;
	private int dm;
	public String getUsn() {
		return usn;
	}
	public void setUsn(String usn) {
		this.usn = usn;
	}
	public int getSs() {
		return ss;
	}
	public void setSs(int ss) {
		this.ss = ss;
	}
	public int getCg() {
		return cg;
	}
	public void setCg(int cg) {
		this.cg = cg;
	}
	public int getWeb() {
		return web;
	}
	public void setWeb(int web) {
		this.web = web;
	}
	public int getMaths() {
		return maths;
	}
	public void setMaths(int maths) {
		this.maths = maths;
	}
	public int getDm() {
		return dm;
	}
	public void setDm(int dm) {
		this.dm = dm;
	}
	@Override
	public String toString() {
		return "Result [usn=" + usn + ", ss=" + ss + ", cg=" + cg + ", web=" + web + ", maths=" + maths + ", dm=" + dm
				+ "]";
	}
	public Result(String usn, int ss, int cg, int web, int maths, int dm) {
		super();
		this.usn = usn;
		this.ss = ss;
		this.cg = cg;
		this.web = web;
		this.maths = maths;
		this.dm = dm;
	}
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
