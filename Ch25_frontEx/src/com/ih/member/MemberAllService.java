package com.ih.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberAllService implements Service {

	@Override
	public ArrayList<MemberDto> execute(HttpServletRequest request,
			HttpServletResponse response) {
		
		MemberDao dao = MemberDao.getInstance();
		
		return dao.membersAll();
	}

}
