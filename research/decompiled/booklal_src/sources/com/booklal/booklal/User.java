package com.booklal.booklal;
/* loaded from: classes.dex */
public class User {
    private Boolean MsgSeen;
    private String name;
    private String phoneNumber;
    private String profileImage;
    private String stringTimeStamp;
    private String uid;

    public User() {
    }

    public Boolean getMsgSeen() {
        return this.MsgSeen;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getProfileImage() {
        return this.profileImage;
    }

    public String getStringTimeStamp() {
        return this.stringTimeStamp;
    }

    public String getUid() {
        return this.uid;
    }

    public void setMsgSeen(Boolean bool) {
        this.MsgSeen = bool;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPhoneNumber(String str) {
        this.phoneNumber = str;
    }

    public void setProfileImage(String str) {
        this.profileImage = str;
    }

    public void setStringTimeStamp(String str) {
        this.stringTimeStamp = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public User(String str, String str2, String str3, String str4, String str5) {
        this.uid = str;
        this.name = str2;
        this.phoneNumber = str3;
        this.profileImage = str4;
        this.stringTimeStamp = str5;
    }

    public User(String str, String str2, String str3, String str4, String str5, Boolean bool) {
        this.uid = str;
        this.name = str2;
        this.phoneNumber = str3;
        this.profileImage = str4;
        this.stringTimeStamp = str5;
        this.MsgSeen = bool;
    }
}
