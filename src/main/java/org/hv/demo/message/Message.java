package org.hv.demo.message;

import java.time.LocalDate;

/**
 * @author leyan95
 */
public class Message {
    private Long id;
    private String msg;
    private LocalDate sendTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public LocalDate getSendTime() {
        return sendTime;
    }

    public void setSendTime(LocalDate sendTime) {
        this.sendTime = sendTime;
    }
}
