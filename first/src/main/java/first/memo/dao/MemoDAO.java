package first.memo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("MemoDAO")
public class MemoDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMemoList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("memo.selectMemoList", map);
	}
}
