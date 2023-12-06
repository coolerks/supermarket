package com.coderman.common.vo.system;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @Date 2023年12月 * @Version 1.0
 **/
@Data
public class PageVO<T> {
    private long total;

    private List<T> rows = new ArrayList<>();

    public PageVO(long total, List<T> data) {
        this.total = total;
        this.rows = data;
    }
}
