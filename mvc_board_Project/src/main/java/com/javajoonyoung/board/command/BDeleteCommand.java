package com.javajoonyoung.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javajoonyoung.board.dao.BDao;

public class BDeleteCommand implements BCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String bId = request.getParameter("bid");
		
		BDao dao = new BDao();
		dao.delete(bId);
	}

}
