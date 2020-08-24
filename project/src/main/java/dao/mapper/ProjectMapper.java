package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Tag;

public interface ProjectMapper {

	@Delete("Delete from tag where wno=#{userno} and no=#{positionNo}")
	void positionTagsClear(Map<String, Object> param);

	@Delete("Delete from tag where wno=#{userno} and no=#{skillsNo}")
	void skillsTagsClear(Map<String, Object> param);

	@Select("Select ifnull(max(tno),0) from tag")
	int getMaxTno();
	
	@Insert("Insert into tag (no, wno, tno, tag) values (#{no}, #{wno}, #{tno}, #{tag})")
	void insertTag(Tag tag);

	@Select("Select * from tag where wno=#{userno}")
	List<Tag> getTags(Map<String, Object> param);
}
