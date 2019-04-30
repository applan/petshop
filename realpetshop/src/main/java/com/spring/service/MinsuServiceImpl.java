package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.GoodsVO;
import com.spring.domain.TA_UserVO;
import com.spring.mapper.MinsuMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
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
	@Transactional
	public int delete_goods(int goodsNum) {
		GoodsVO vo = mapper.getGood(goodsNum);
		String newdate = vo.getGoodsDate().substring(0,9);
		vo.setGoodsDate(newdate);
		mapper.insertTrash_goods(vo);
		return mapper.delete_goods(goodsNum);
	}

	@Override
	public List<GoodsVO> getList_request() {
		return mapper.getList_request();
	}

	@Override
	public GoodsVO getRequestInfo(int goodsNum) {
		return mapper.getRequestInfo(goodsNum);
	}

	@Override
	public int countRequest() {
		return mapper.countRequest();
	}

	@Override
	public int countMember() {
		return mapper.countMember();
	}

	@Override
	@Transactional
	public int delete_members(int userNum) {
		TA_UserVO vo = mapper.getMember(userNum);
		mapper.insertTrash_members(vo);
		return mapper.delete_members(userNum);
	}

	
	

}
