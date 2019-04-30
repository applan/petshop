package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class TA_UserVO_Trash {
 private int userNum;
 private String userId;
 private String userName;
 private String usercheck;
 private boolean checkResult;
 private Date trashDate;
 private String printTrashDate;
}
