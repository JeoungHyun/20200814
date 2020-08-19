package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Coworking;
import logic.Hashtag;

public interface CoworkingMapper {

	@Select("select ifnull(max(gno),0) gno from working")
	int getmaxcono();

	@Insert("insert INTO working (gno, name, title, category, content, maxnum, startdate, enddate, deadline, process, grade, loc) "
			+ "values(#{gno}, #{name}, #{title}, #{category}, #{content}, #{maxnum}, #{startdate}, #{enddate}, #{deadline}, #{process}, #{grade}, #{loc})")
	void insert(Coworking coworking);

	@Select("select * from working where gno = #{gno}")
	Coworking getdetails(Integer gno);

	@Select({"<script> select * from working "
			+ "<if test='searchtype != null and searchinput != null '> where ${searchtype} like '%${searchinput}%' </if>"
			+ "</script>"})
	List<Coworking> getWorkinglist(Map<String, Object> param);

	@Insert("insert into hash (no, wno, hno, hashname) values(#{no}, #{wno}, #{hno}, #{hashname})")
	void insertHashtag(Hashtag hash);

	@Select("select * from hash where no = 6")
	List<Hashtag> getHashtaglist();



}
