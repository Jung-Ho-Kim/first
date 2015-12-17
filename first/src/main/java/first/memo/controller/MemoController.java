package first.memo.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import first.common.common.CommandMap;
import first.memo.service.MemoService;

@Controller
public class MemoController {
	
	@Resource
	private MemoService memoService;
	
	@RequestMapping(value="/memo.do")
	public ModelAndView goMemo(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/blog/memo");
		
		Map<String,Object> resultMap = memoService.selectMemoList(commandMap.getMap());
    	
    	mv.addObject("list", resultMap.get("result"));
		
		return mv;
	}
}
