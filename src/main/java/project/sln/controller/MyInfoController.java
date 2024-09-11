package project.sln.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Slf4j
@RequiredArgsConstructor
@RequestMapping(value = "/gds")
@Controller
public class MyInfoController {

    @GetMapping("/gds/myInfo")
    public String showMyInfo() {
        // 여기에서 사용자 정보를 조회하고 JSP 페이지에 전달하는 로직을 작성
        // (실제 로직은 MyConditionController에서 가져올 수도 있습니다)

        // 예시로 간단한 문자열 반환
        return "내 정보 화면입니다.";
    }


    @GetMapping("/showChange")
    public String selfTest(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showChange";

    }

    @GetMapping("/showNumber1")
    public String selfTest1(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber1";

    }

    @GetMapping("/showNumber2")
    public String selfTest2(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber2";


    }

    @GetMapping("/showNumber3")
    public String selfTest3(HttpSession session, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".selfTest Start!");

        log.info(this.getClass().getName() + "selfTest End!");

        return "/gds/showNumber3";


    }
}