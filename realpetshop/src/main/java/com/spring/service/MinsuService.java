package com.spring.service;

import java.util.List;

import com.spring.domain.GoodsVO;
import com.spring.domain.TA_UserVO;

public interface MinsuService {

	public int insert(GoodsVO vo);
	public List<GoodsVO> getList_delete();
	public List<TA_UserVO> getList_member();
	public int delete_goods(int goodsNum);
}
