package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Member;
import kr.co.teaspoon.service.MemberService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/member/*")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    HttpSession session;

    BCryptPasswordEncoder pwEncoder = new BCryptPasswordEncoder();

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
        return "/member/memberDetail";
    }

    /* 일반 회원 본인 정보 보기 */
    @GetMapping("mypage.do")
    public String mypage(@RequestParam String id, Model model) throws Exception {
        String sid = (String) session.getAttribute("sid");
        Member member = memberService.getMember(sid);
        model.addAttribute("member", member);
        return "/member/mypage";
    }

    /* 회원 가입 - 회원 가입 처리 */
    @RequestMapping(value="insert.do", method = RequestMethod.POST)
    public String memberWrite(Member member, Model model) throws Exception {
        String ppw = member.getPw();
        String pw = pwEncoder.encode(ppw);
        member.setPw(pw);
        memberService.memberInsert(member);
        return "redirect:/";
    }

    /* 로그인 폼 로딩 */
    @RequestMapping("login.do")
    public String memberLoginForm(Model model) throws Exception {
        return "/member/loginForm";
    }

    @PostMapping("signin.do")
    public String memberSignIn(@RequestParam String id, @RequestParam String pw, Model model) throws Exception {
        Member member = memberService.signIn(id);
        if(member != null) {
            boolean loginSuccess = pwEncoder.matches(pw, member.getPw());
            if(loginSuccess) {
                session.setAttribute("member", member);
                session.setAttribute("sid", id);
                return "redirect:/";
            } else {
                return "redirect:login.do";
            }
        } else {
            return "redirect:login.do";
        }
    }

    @RequestMapping(value = "loginpro.do", method = RequestMethod.POST)
    public String memberLogin(@RequestParam String id, @RequestParam String pw, Model model) throws Exception {
        boolean ps = memberService.loginCheck(id, pw);
        if(ps) {
            session.setAttribute("sid", id);
            return "redirect:/";
        } else {
            return "redirect:login.do";
        }
    }

    @RequestMapping(value = "idCheck.do", method = RequestMethod.POST)
    public void idCheck(HttpServletResponse response, HttpServletRequest request, Model model) throws Exception {
        String id = request.getParameter("id");
        Member member = memberService.getMember(id);
        boolean result = false;
        if(member != null) {
            result = true;
        } else {
            result = false;
        }
        JSONObject json = new JSONObject();
        json.put("result", result); // ajax 에서 부를때 같은 이름이 존재해야함
        PrintWriter out = response.getWriter();
        out.println(json.toString());   // 콘솔창으로 이동
    }

    /* 로그아웃 처리 */
    @GetMapping("logout.do")
    public String memberLogout(HttpSession session) throws Exception {
        session.invalidate();
        return "redirect:/";
    }

    /* 개인정보 수정 처리 */

    /* Ajax 로그인 처리 */
    @RequestMapping(value = "loginCheck.do", method = RequestMethod.POST)
    public String memberLoginCtrl(@RequestParam String id, @RequestParam String pw, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
        Member member = new Member();
        member.setId(id);
        member.setPw(pw);
        Member mem = memberService.loginAjax(member);
        boolean mat = pwEncoder.matches(member.getPw(), mem.getPw());
        if(mem != null && mat) {
            session.setAttribute("member", mem);
            session.setAttribute("sid", mem.getId());
            rttr.addFlashAttribute("msg", "로그인 성공");
            String referer = request.getHeader("Referer");      // 요청한 페이지를 기억해서 보냄
            return "redirect:/" + referer;
            //return "redirect:/";
        } else {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", "로그인 실패");
            return "redirect:/loginForm.do";
        }
    }
}