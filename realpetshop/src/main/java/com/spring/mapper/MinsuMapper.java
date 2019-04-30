package com.spring.mapper;

import java.util.List;

import com.spring.domain.GoodsVO;
import com.spring.domain.GoodsVO_Trash;
import com.spring.domain.TA_UserVO;
import com.spring.domain.TA_UserVO_Trash;

public interface MinsuMapper {

	public int insert(GoodsVO vo);
	public List<GoodsVO> getList_delete();
	public int countRequest();
	public int countMember();
	public List<TA_UserVO> getList_member();
	public List<GoodsVO> getList_request();
	public GoodsVO getRequestInfo(int goodsNum);
	public int delete_goods(int goodsNum);
	public int delete_members(int userNum);

   // trash담당 
	public int insertTrash_goods(GoodsVO vo);
	public GoodsVO getGood(int goodsNum);
	public TA_UserVO getMember(int userNum);
	public int insertTrash_members(TA_UserVO vo);
	public List<GoodsVO_Trash> getList_goods_trash();
	public List<TA_UserVO_Trash> getList_member_trash(); 
	public int permanently_Delete_member(int userNum);
	public int permanently_Delete_goods(int goodsNum);
	public TA_UserVO_Trash getMember_Trash(int userNum);
	public GoodsVO_Trash getGoods_Trash(int goodsNum);
	public int Reinsert_goods(GoodsVO vo);
}
