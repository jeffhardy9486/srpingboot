package cn.itlaobing.spf;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
    @RestController
    public class HelloController {
        @RequestMapping("/hello")
        public String hello() {
            return "第三次提交";
        }
    }

