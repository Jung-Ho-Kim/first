package first.memo.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.memo.dao.MemoDAO;

@Service("MemoService")
public class MemoServiceImpl implements MemoService {
	Logger log = Logger.getLogger(this.getClass());

	@Resource
	private MemoDAO memoDAO;
	
	@Override
	public Map<String, Object> selectMemoList(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = new HashMap<String,Object>();
		resultMap.put("result", memoDAO.selectMemoList(map));
		return resultMap;
	}
}
