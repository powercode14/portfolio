package com.tistory.powercode.portfolio.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface HelloMapper {
    String hello(Map param);
}
