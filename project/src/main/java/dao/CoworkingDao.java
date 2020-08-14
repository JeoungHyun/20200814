package dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.CoworkingMapper;
import logic.Coworking;

@Repository
public class CoworkingDao {
	@Autowired
	private SqlSessionTemplate template;
	Map<String,Object> param = new HashMap<>();

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

}
