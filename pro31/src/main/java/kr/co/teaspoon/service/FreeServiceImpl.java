package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.FreeDAO;
import kr.co.teaspoon.dto.Free;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FreeServiceImpl implements FreeService {

    @Autowired
    private FreeDAO freeDAO;

    @Override
    public List<Free> freeList() throws Exception {
        return freeDAO.freeList();
    }

    @Override
    public Free freeDetail(int bno) throws Exception {
        return freeDAO.freeDetail(bno);
    }

    @Override
    public void freeInsert(Free free) throws Exception {
        freeDAO.freeInsert(free);
    }

    @Override
    public void freeEdit(Free free) throws Exception {
        freeDAO.freeEdit(free);
    }

    @Override
    public void freeDelete(int bno) throws Exception {
        freeDAO.freeDelete(bno);
    }
}