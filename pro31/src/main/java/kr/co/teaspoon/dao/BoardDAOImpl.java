package kr.co.teaspoon.dao;

import kr.co.teaspoon.dto.Board;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Board> boardList() throws Exception {
        return sqlSession.selectList("board.boardList");
    }

    @Override
    public Board boardDetail(int seq) throws Exception {
        sqlSession.update("board.countUp", seq);
        return sqlSession.selectOne("board.boardDetail", seq);
    }

    @Override
    public int boardCount() throws Exception {
        return sqlSession.selectOne("board.boardCount");
    }

    @Override
    public void boardInsert(Board board) throws Exception {
        sqlSession.insert("board.boardInsert", board);
    }

    @Override
    public void boardUpdate(Board board) throws Exception {
        sqlSession.update("board.boardUpdate", board);
    }

    @Override
    public void boardDelete(int seq) throws Exception {
        sqlSession.delete("board.boardDelete", seq);
    }

}