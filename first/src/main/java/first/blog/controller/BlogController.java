package first.blog.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.common.common.CommandMap;

@Controller
public class BlogController {
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/blog/index.do")
	public ModelAndView blogIndex(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/index");
		
		return mv;
	}
	
	@RequestMapping(value="/blog/memo.do")
	public ModelAndView goMemo(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/blog/memo");
		
		return mv;
	}
	
	@RequestMapping(value="/blog/gallery.do")
	public ModelAndView goGallery(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/blog/gallery");
		
		return mv;
	}
}
