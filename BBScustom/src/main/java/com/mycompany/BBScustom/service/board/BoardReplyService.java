package com.mycompany.BBScustom.service.board;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.stereotype.Service;

@Service
public class BoardReplyService implements BoardService {

	@Override
	public void excute(Model model) {
		Map<String,Object>map= model.asMap();
		HttpServletRequest request =(HttpServletRequest) map.get("request");
		String bdname= request.getParameter("bdname");
		String title= request.getParameter("title");
		String content= request.getParameter("content");
		String bdgroup= request.getParameter("bdgroup");
		String step= request.getParameter("step");
		String indent= request.getParameter("indent");
		BOARD_DAO.replyShape(bdgroup,step);
		BOARD_DAO.reply(bdname,title,content,bdgroup,step,indent);

	}

}
