package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.BoardDAOImpl;
import kr.co.teaspoon.dto.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    private BoardDAOImpl boardDAO;

    @Override
    public List<Board> boardList() throws Exception {
        return boardDAO.boardList();
    }

    @Override
    public Board boardDetail(int seq) throws Exception {
        return boardDAO.boardDetail(seq);
    }

    @Override
    public int boardCount() throws Exception {
        return boardDAO.boardCount();
    }

    @Override
    public void boardInsert(Board board) throws Exception {
        boardDAO.boardInsert(board);
    }

    @Override
    public void boardUpdate(Board board) throws Exception {
        boardDAO.boardUpdate(board);
    }

    @Override
    public void boardDelete(int seq) throws Exception {
        boardDAO.boardDelete(seq);
    }
}