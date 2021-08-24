package com.baizhi.dao;

import java.util.List;

public interface BaseDAO<T> {
    List<T> selectAll();

    void addOne(T t);

    void updateOne(T t);

    void deleteOne(String id);
}
