package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.GoodsVO;
import com.spring.domain.TA_UserVO;
import com.spring.mapper.MinsuMapper;

@Service
public class MinsuServiceImpl implements MinsuService {

	@Inject
	private MinsuMapper mapper;
	
	@Override
	public int insert(GoodsVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public List<GoodsVO> getList_delete() {
		return mapper.getList_delete();
	}

	@Override
	public List<TA_UserVO> getList_member() {
		return mapper.getList_member();
	}
	
	@Override
	public int delete_goods(int goodsNum) {
		return mapper.delete_goods(goodsNum);
	}

	
	

}
