package com.booklal.booklal;
/* loaded from: classes.dex */
public class Message {
    private int feeling = -1;
    private String message;
    private String messageId;
    private String senderId;
    private long timestamp;

    public Message() {
    }

    public int getFeeling() {
        return this.feeling;
    }

    public String getMessage() {
        return this.message;
    }

    public String getMessageId() {
        return this.messageId;
    }

    public String getSenderId() {
        return this.senderId;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setFeeling(int i) {
        this.feeling = i;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMessageId(String str) {
        this.messageId = str;
    }

    public void setSenderId(String str) {
        this.senderId = str;
    }

    public void setTimestamp(long j5) {
        this.timestamp = j5;
    }

    public Message(String str, String str2, long j5) {
        this.message = str;
        this.senderId = str2;
        this.timestamp = j5;
    }
}
