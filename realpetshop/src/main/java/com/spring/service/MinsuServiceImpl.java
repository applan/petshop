package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.GoodsVO;
import com.spring.domain.GoodsVO_Trash;
import com.spring.domain.TA_UserVO;
import com.spring.domain.TA_UserVO_Trash;
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
		if(vo.getGoodsDate() != null) {String newdate = vo.getGoodsDate().substring(0,9);vo.setGoodsDate(newdate);}

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

	@Override
	public List<GoodsVO_Trash> getList_goods_trash() {
		return mapper.getList_goods_trash();
	}

	@Override
	public List<TA_UserVO_Trash> getList_member_trash() {
		return mapper.getList_member_trash();
	}

	@Override
	public int permanently_Delete_member(int userNum) {
		return mapper.permanently_Delete_member(userNum);
	}

	@Override
	public int permanently_Delete_goods(int goodsNum) {
		return mapper.permanently_Delete_goods(goodsNum);
	}

//	@Override
//	@Transactional
//	public int restore_member(int userNum) {
//		TA_UserVO_Trash vo =mapper.getMember_Trash(userNum);
//		TA_UserVO
//		
//		return 0;
//	}

	@Override
	@Transactional
	public int restore_goods(int goodsNum) {
		GoodsVO_Trash vo = mapper.getGoods_Trash(goodsNum);
		GoodsVO invo = new GoodsVO();
		invo.setGoodsNum(vo.getGoodsNum());
		invo.setGoodsName(vo.getGoodsName());
		invo.setGoodsId(vo.getGoodsId());
		invo.setGoodsMainUrl(vo.getGoodsMainUrl());
		if(vo.getGoodsUrl() != null) {invo.setGoodsUrl(vo.getGoodsUrl());}
		if(vo.getGoodsDate() != null) {invo.setGoodsDate(vo.getGoodsDate());}
		if(vo.getGoodsInfo() != null) {invo.setGoodsInfo(vo.getGoodsInfo());}
		invo.setGoodsPrice(vo.getGoodsPrice());
		mapper.Reinsert_goods(invo);
		return mapper.permanently_Delete_goods(goodsNum);
	}





	
	

}
