package com.javajoonyoung.board.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javajoonyoung.board.dao.BDao;
import com.javajoonyoung.board.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		BDao dao = new BDao();
		ArrayList<BDto> dtos = dao.list();
		request.setAttribute("list", dtos);
	}

}
