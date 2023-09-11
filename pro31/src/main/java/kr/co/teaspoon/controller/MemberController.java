package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Member;
import kr.co.teaspoon.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member/*")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    HttpSession session;

    /* 관리자가 볼 수 있는 회원 목록 */
    @RequestMapping(value = "list.do", method = RequestMethod.GET)
    public String memberList(Model model) throws Exception {
        List<Member> memberList = memberService.memberList();
        model.addAttribute("memberList", memberList);
        model.addAttribute("title", "회원 목록");
        return "/member/memberList";
    }
    
    /* 관리자가 회원의 상세 정보 보기 */
    @GetMapping("detail.do")
    public String memberDetail(@RequestParam String id, Model model) throws Exception {
        Member member = memberService.getMember(id);
        model.addAttribute("member", member);
        return "member/memberDetail";
    }

    /* 일반 회원 본인 정보 보기 */
    @GetMapping("mypage.do")
    public String mypage(@RequestParam String id, Model model) throws Exception {
        String sid = (String) session.getAttribute("sid");
        Member member = memberService.getMember(sid);
        model.addAttribute("member", member);
        return "member/mypage";
    }

    /* 회원 가입 - 회원 강비 처리 */
    @RequestMapping(value = "insert.do", method = RequestMethod.GET)
    public String memberWrite(Member member, Model model) throws Exception {
        return "redirect:/";
    }

    /* 로그인 폼 로딩 */
    @RequestMapping("login.do")
    public String memberLoginForm(Model model) throws Exception {
        return "member/loginForm";
    }

}