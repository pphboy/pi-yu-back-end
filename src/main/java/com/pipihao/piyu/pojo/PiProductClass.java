package com.pipihao.piyu.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;


/**
 * 皮物的分类
 */

@Data
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class PiProductClass {
    private int id;
    private String className;
    private String createDate;
}
