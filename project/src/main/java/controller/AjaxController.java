package controller;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import logic.Coworking;
import logic.DevService;
import logic.Hashtag;
import logic.Reply;
import logic.SNSFile;

@RestController // @ResponseBody: View 없이 직접 데이터를 클라이언트에 전송
@RequestMapping("ajax")
public class AjaxController {

	@Autowired
	private DevService service;

	@RequestMapping(value = "fileupload", produces = "text/plain; charset=UTF-8", method = RequestMethod.POST)
	public String fileupload(MultipartFile[] files, HttpServletRequest request) {
		System.out.println("ajax");
		System.out.println(files);
		for (MultipartFile file : files) {
			System.out.println(file.getOriginalFilename());
			service.uploadFileCreate(file, request, "test/file/");
			SNSFile f = service.maxfno();
			f.setfileurl("file/");
			f.setFilename(file.getOriginalFilename());
			service.insert_file(f);
		}
		return null;
	}

	@RequestMapping(value = "hashtag", produces = "text/plain; charset=UTF-8", method = RequestMethod.POST)
	public String hashtag(HttpServletRequest request) {
		String[] arr = request.getParameterValues("hash");
		System.out.println(Arrays.toString(arr));
		Hashtag hash = new Hashtag();
		hash.setNo(6);
		hash.setWno(service.getmaxcono() + 1);
		for (int i = 0; i < arr.length; i++) {
			hash.setHno(i + 1);
			hash.setHashname(arr[i]);
			service.insertHashtag(hash);
		}
		return null;
	}

	@RequestMapping(value = "searchworking", produces = "text/plain; charset=UTF-8", method = RequestMethod.POST)
	public String searchworking(HttpServletRequest request) {
		String searchinput = request.getParameter("searchinput");
		String searchtype = request.getParameter("searchtype");
		System.out.println(request.getParameter("searchinput"));
		System.out.println(request.getParameter("searchtype"));
		List<Coworking> list = service.getWorkinglist(searchtype, searchinput);
		List<Hashtag> hash = service.getHashtaglist();
		HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
		for (int i = 0; i < list.size(); i++) {
			map.put(list.get(i).getGno(), i);
		}
		for (Hashtag h : hash) {
			if (map.containsKey(h.getWno())) {
				list.get(map.get(h.getWno())).addHashlist(h.getHashname());
			}

		}
		StringBuilder sb = new StringBuilder("[");
		int i = 0;
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		for (Coworking co : list) {
			sb.append("{\"gno\":\"" + co.getGno() + "\",");
			sb.append("\"name\":\"" + co.getName() + "\",");
			sb.append("\"title\":\"" + co.getTitle() + "\",");
			sb.append("\"category\":\"" + co.getCategory() + "\",");
			sb.append("\"content\":\"" + co.getContent() + "\",");
			sb.append("\"maxnum\":\"" + co.getMaxnum() + "\",");
			sb.append("\"startdate\":\"" + sf.format(co.getStartdate()) + "\",");
			sb.append("\"enddate\":\"" + sf.format(co.getEnddate()) + "\",");
			sb.append("\"deadline\":\"" + sf.format(co.getDeadline()) + "\",");
			sb.append("\"hashlist\":[");
			for (int j = 0; j < co.getHashlist().size(); j++) {
				sb.append("\"" + co.getHashlist().get(j) + "\"");
				if (j < co.getHashlist().size() - 1)
					sb.append(",");
			}
			sb.append("]}");
			i++;
			if (i < list.size())
				sb.append(",");
		}
		sb.append("]");
		System.out.println(sb);
		return sb.toString();
	}

	@PostMapping(value = "findid", produces = "text/plain; charset=UTF-8")
	public String findid(HttpServletRequest request) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");

		String id = service.findId(name, email);
		if (id != null) {
			return "회원님의 아이디는 " + id + "입니다.";
		} else {
			return "해당 아이디가 존재하지 않습니다.";
		}
	}

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

	@RequestMapping(value = "commentList", produces = "text/plain; charset=UTF-8", method = RequestMethod.GET)
	public String commentList(HttpServletRequest request) {
		System.out.println("ajax");
		Reply reply = new Reply();
		reply.setNo(Integer.parseInt(request.getParameter("no")));
		reply.setBno(Integer.parseInt(request.getParameter("bno")));
		List<Reply> replylist = service.replyList(reply);
		System.out.println(replylist);
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		int i = 0;
		for (Reply r : replylist) {
			sb.append("{\"no\":\"" + r.getNo() + "\",");
			sb.append("\"rno\":\"" + r.getRno() + "\",");
			sb.append("\"bno\":\"" + r.getBno() + "\",");
			sb.append("\"name\":\"" + r.getName() + "\",");
			sb.append("\"content\":\"" + r.getContent() + "\",");
			sb.append("\"regdate\":\"" + r.getRegdate() + "\"}");
			i++;
			if (i < replylist.size())
				sb.append(",");
		}
		sb.append("]");
		System.out.println(sb);
		return sb.toString();
	}
}
