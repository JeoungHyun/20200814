package logic;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.BoardDao;
import dao.CoworkingDao;
import dao.ReplyDao;
import dao.UserDao;
import dao.fileDao;

@Service
public class DevService {

	@Autowired
	private fileDao filedao;

	@Autowired
	private UserDao userDao;

	@Autowired
	private BoardDao boardDao;

	@Autowired
	private CoworkingDao coworkingDao;

	@Autowired
	private ReplyDao replyDao;

	private Map<String, Object> map = new HashMap<>();

	public void uploadFileCreate(MultipartFile picture, HttpServletRequest request, String path) {
		String orgFile = picture.getOriginalFilename();
		String uploadPath = request.getServletContext().getRealPath("/") + path;
		// 웹 어플리케이션의 경로를 구하기 (webapp폴더까지)
		System.out.println(uploadPath);
		System.out.println("orgFile: " + orgFile);
		File fpath = new File(uploadPath);
		if (!fpath.exists())
			fpath.mkdirs();
		try {
			picture.transferTo(new File(uploadPath + orgFile));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public SNSFile maxfno() {
		return filedao.maxfno();
	}

	public void insert_file(SNSFile f) {
		filedao.insert_file(f);
	}

	public User getUser(String id) {
		return userDao.selectOne(id);
	}

	public void userInsert(User user) {
		userDao.insert(user);
	}

	public void update(User user) {
		userDao.update(user);
	}

	public void delete(String id) {
		userDao.delete(id);
	}

	public int getmaxuno() {
		return userDao.getmaxuno();
	}

	public int boardCount(int no, String searchtype, String searchcontent) {
		map.clear();
		if (searchtype != null) {
			String[] cols = searchtype.split(",");
			map.put("col1", cols[0]);
			if (cols.length > 1) {
				map.put("col2", cols[1]);
			}
			if (cols.length > 2) {
				map.put("col3", cols[2]);
			}
		}
		map.put("searchcontent", searchcontent);
		return boardDao.count(no, searchtype, searchcontent);
	}

	public List<Board> boardlist(int no, Integer pageNum, int limit, String searchtype, String searchcontent) {
		return boardDao.list(no, pageNum, limit, searchtype, searchcontent);
	}

	public void boardWrite(Board board, HttpServletRequest request) {

		int max = boardDao.maxnum(board.getNo());
		board.setBno(++max);
		boardDao.insert(board);
	}

	public Board selectOne(int no, int bno) {
		return boardDao.detail(no, bno);
	}

	public Board getBoard(Integer no, Integer bno, boolean able) {
//		if(able) {
//			boardDao.readcnt(no,bno);
//		}
		return boardDao.detail(no, bno);
	}

	public int getmaxcono() {
		return coworkingDao.getmaxno();
	}

	public void coworkingInsert(Coworking coworking) {
		coworkingDao.insert(coworking);
	}

	public Coworking getdetails(Integer gno) {
		return coworkingDao.getdetails(gno);
	}

	public List<User> getUserList() {
		return userDao.getUserList();
	}

	public List<Coworking> getWorkinglist(String searchtype, String searchinput) {
		return coworkingDao.getWorkinglist(searchtype, searchinput);
	}

	public void insertHashtag(Hashtag hash) {
		coworkingDao.insertHashtag(hash);
	}

	public List<Hashtag> getHashtaglist() {
		return coworkingDao.getHashtaglist();
	}

	public String findId(String name, String email) {
		return userDao.findId(name, email);
	}

	public void replyInsert(Reply reply) {

		int max = replyDao.maxnum(reply);
		reply.setRno(++max);

		replyDao.replyInsert(reply);

	}

	public List<Reply> replyList(Reply reply) {
		return replyDao.replyList(reply);

	}

	public void boardDelete(Board board) {
		boardDao.delete(board);
	}

	public void boardUpdate(Board board) {
		boardDao.update(board);
	}

	public void likeit(Integer no, Integer bno,Integer gno, String name) {
		boardDao.likeit(no,bno,gno, name);
		
	}

	public int maxgno(Integer no, Integer bno) {
		return boardDao.maxgno(no,bno);
	}

	public int likechk(Integer no, Integer bno, String name) {
		return boardDao.likechk(no,bno,name);
	}

	public List<goodorbad> goodorbadlist(Integer no,Integer pageNum, int limit) {
		return boardDao.goodorbadlist(no,pageNum,limit);
	}

	public int getpoint(Integer no, Integer bno) {
		return boardDao.getpoint(no,bno);
	}
}
