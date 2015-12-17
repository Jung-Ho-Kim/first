package first.memo.service;

import java.util.Map;

public interface MemoService {
	Map<String, Object> selectMemoList(Map<String, Object> map) throws Exception;
}
