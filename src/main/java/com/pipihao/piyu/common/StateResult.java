package com.pipihao.piyu.common;
import lombok.ToString;
import org.apache.commons.lang3.StringUtils;

import java.util.List;
import java.util.Objects;


@ToString
public class StateResult {

    public static final StateResult example = new StateResult();

    /**
     * 数据效验返回类
     * @param obj
     * @param successMsg
     * @param errorMsg
     * @param data
     * @return
     */
    public static StateResult getExample(Object obj,String successMsg,String errorMsg,Object data){
        if (obj == null) {
            return StateResult.getExample(false,errorMsg,data);
        }else{
            if(obj instanceof Boolean){
                if(!(Boolean) obj){
                    return StateResult.getExample(false,errorMsg,data);
                }
            }
            if(obj instanceof String){
                if(StringUtils.isEmpty((String)obj)){
                    return StateResult.getExample(false,errorMsg,data);
                }
            }
            return StateResult.getExample(true,successMsg,data);
        }
    }

    /**
     * 数据效验返回类
     * @param obj
     * @param successMsg
     * @param errorMsg
     * @param successObj
     * @param errorObj
     * @return
     */
    public static StateResult getExample(Object obj,String successMsg,String errorMsg,Object successObj,Object errorObj){
        if (obj == null) {
            return StateResult.getExample(false,errorMsg,errorObj);
        }else{
            if(obj instanceof List){
                if(((List<?>) obj).size() < 1){
                    return StateResult.getExample(false,errorMsg,errorObj);
                }
            }
            if(obj instanceof Boolean){
                if(!(Boolean) obj){
                    return StateResult.getExample(false,errorMsg,errorObj);
                }
            }
            if(obj instanceof String){
                if(StringUtils.isEmpty((String)obj)){
                    return StateResult.getExample(false,errorMsg,errorObj);
                }
            }
            return StateResult.getExample(true,successMsg,successObj);
        }
    }
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
