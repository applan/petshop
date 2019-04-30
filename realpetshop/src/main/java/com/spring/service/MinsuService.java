package com.spring.service;

import java.util.List;

import com.spring.domain.GoodsVO;
import com.spring.domain.GoodsVO_Trash;
import com.spring.domain.TA_UserVO;
import com.spring.domain.TA_UserVO_Trash;

public interface MinsuService {

	public int insert(GoodsVO vo);
	public List<GoodsVO> getList_delete();
	public int countRequest();
	public int countMember();
	public List<TA_UserVO> getList_member();
	public List<GoodsVO> getList_request();
	public GoodsVO getRequestInfo(int goodsNum);
	public int delete_goods(int goodsNum);
	public int delete_members(int userNum);
	public List<GoodsVO_Trash> getList_goods_trash();
	public List<TA_UserVO_Trash> getList_member_trash(); 
	public int permanently_Delete_member(int userNum);
	public int permanently_Delete_goods(int goodsNum);
//	public int restore_member(int userNum);
	public int restore_goods(int goodsNum);

}
