package dao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Coworking;

public interface CoworkingMapper {

	@Select("select ifnull(max(gno),0) gno from working")
	int getmaxcono();

	@Insert("insert INTO working (gno, name, title, category, content, maxnum, startdate, enddate, deadline, process, grade, loc) "
			+ "values(#{gno}, #{name}, #{title}, #{category}, #{content}, #{maxnum}, #{startdate}, #{enddate}, #{deadline}, #{process}, #{grade}, #{loc})")
	void insert(Coworking coworking);

	@Select("select * from working where gno = #{gno}")
	Coworking getdetails(Integer gno);



}
