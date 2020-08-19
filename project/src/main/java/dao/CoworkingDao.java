package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.CoworkingMapper;
import logic.Coworking;
import logic.Hashtag;

@Repository
public class CoworkingDao {
	@Autowired
	private SqlSessionTemplate template;
	private Map<String,Object> param = new HashMap<>();

	public int getmaxno() {
		return template.getMapper(CoworkingMapper.class).getmaxcono();
	}

	public void insert(Coworking coworking) {
		template.getMapper(CoworkingMapper.class).insert(coworking);
	}

	public Coworking getdetails(Integer gno) {
		param.clear();
		param.put("gno",gno);
		return template.getMapper(CoworkingMapper.class).getdetails(gno);
	}

	public List<Coworking> getWorkinglist(String searchtype, String searchinput) {
		param.clear();
		param.put("searchtype", searchtype);
		param.put("searchinput", searchinput);
		return template.getMapper(CoworkingMapper.class).getWorkinglist(param);
	}

	public void insertHashtag(Hashtag hash) {
		template.getMapper(CoworkingMapper.class).insertHashtag(hash);
	}

	public List<Hashtag> getHashtaglist() {
		return template.getMapper(CoworkingMapper.class).getHashtaglist();
	}

}
