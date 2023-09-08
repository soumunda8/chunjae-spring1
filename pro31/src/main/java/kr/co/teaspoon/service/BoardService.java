package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.Board;

import java.util.List;

public interface BoardService {

    public List<Board> boardList() throws Exception;
    public Board boardDetail(int seq) throws Exception;
    public int boardCount() throws Exception;
    public void boardInsert(Board board) throws Exception;
    public void boardUpdate(Board board) throws Exception;
    public void boardDelete(int seq) throws Exception;

}