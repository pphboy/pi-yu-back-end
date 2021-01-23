package com.pipihao.piyu.common;
import lombok.ToString;

import java.util.Objects;


@ToString
public class StateResult {

    public static final StateResult example = new StateResult();

    /**
     * 返回 信息
     * @param status
     * @param msg
     * @param data
     * @return
     */
    public static StateResult getExample(boolean status, String msg, Object data) {
        example.setData(data);
        example.setMsg(msg);
        example.setStatus(status);
        return example;
    }

    private boolean status;

    private String msg;

    private Object data;

    public StateResult() {
    }

    public StateResult(boolean status, String msg, Object data) {
        this.status = status;
        this.msg = msg;
        this.data = data;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

}
