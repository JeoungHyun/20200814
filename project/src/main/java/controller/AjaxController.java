package controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import logic.SNSFile;
import logic.Board;
import logic.DevService;
import logic.Reply;



@RestController // @ResponseBody: View 없이 직접 데이터를 클라이언트에 전송
@RequestMapping("ajax")
public class AjaxController {
	
	@Autowired
	private DevService service;
	

	@RequestMapping(value = "fileupload", produces = "text/plain; charset=UTF-8", method = RequestMethod.POST)
	public String fileupload(MultipartFile[] files, HttpServletRequest request) {
		System.out.println("ajax");
		System.out.println(files);
		for(MultipartFile file : files) {
			System.out.println(file.getOriginalFilename());
			service.uploadFileCreate(file, request, "test/file/");
			SNSFile f = service.maxfno();
			f.setfileurl("file/");
			f.setFilename(file.getOriginalFilename());
			service.insert_file(f);
		}
		return null;
	}
	//20200814 추가
	@RequestMapping(value = "commentinsert", produces = "text/plain; charset=UTF-8", method = RequestMethod.POST)
	public String commentinsert(HttpServletRequest request) {
		System.out.println("ajax");
		Reply reply = new Reply();
		reply.setNo(Integer.parseInt(request.getParameter("no")));
		reply.setBno(Integer.parseInt(request.getParameter("bno")));
		reply.setContent(request.getParameter("content"));
		reply.setName(request.getParameter("name"));
		System.out.println(reply);
		
		service.replyInsert(reply);
		return null;
	}
	//20200814 추가
	@RequestMapping(value = "commentList", produces = "text/plain; charset=UTF-8", method = RequestMethod.GET)
	public String commentList(HttpServletRequest request) {
		System.out.println("ajax");
		Reply reply = new Reply();
		reply.setNo(Integer.parseInt(request.getParameter("no")));
		reply.setBno(Integer.parseInt(request.getParameter("bno")));
		List<Reply> replylist =service.replyList(reply);
		System.out.println(replylist);
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		int i = 0;
		for(Reply r : replylist) {
			sb.append("{\"no\":\""+r.getNo()+"\",");
			sb.append("\"rno\":\""+r.getRno()+"\",");
			sb.append("\"bno\":\""+r.getBno()+"\",");
			sb.append("\"name\":\""+r.getName()+"\",");
			sb.append("\"content\":\""+r.getContent()+"\",");
			sb.append("\"regdate\":\""+r.getRegdate()+"\"}");
			i++;
			if(i < replylist.size()) sb.append(",");
		}
		sb.append("]");
		System.out.println(sb);
		return sb.toString();
	}
}
