package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.MemberDAOImpl;
import kr.co.teaspoon.dto.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAOImpl memberDAO;

    @Override
    public List<Member> memberList() throws Exception {
        return memberDAO.memberList();
    }

    @Override
    public Member getMember(String id) throws Exception {
        return memberDAO.getMember(id);
    }

    @Override
    public int memberCount() throws Exception {
        return memberDAO.memberCount();
    }

    // 로그인을 컨트롤러에서 처리
    @Override
    public Member signIn(String id) throws Exception {
        return memberDAO.signIn(id);
    }

    // 서비스에서 로그인 처리
    @Override
    public boolean loginCheck(String id, String pw) throws Exception {
        boolean comp = false;
        Member member = memberDAO.loginCheck(id);
        if(pw.equals(member.getPw())) {
            comp = true;
        }
        return comp;
    }

    // AJAX 로그인 처리
    @Override
    public Member login(String id) throws Exception {
        return memberDAO.login(id);
    }

    @Override
    public void memberInsert(Member member) throws Exception {
        memberDAO.memberInsert(member);
    }

    @Override
    public void memberEdit(Member member) throws Exception {
        memberDAO.memberEdit(member);
    }

    @Override
    public void memberNoUse(String id) throws Exception {
        memberDAO.memberNoUse(id);
    }

    @Override
    public void memberDelete(String id) throws Exception {
        memberDAO.memberDelete(id);
    }

}