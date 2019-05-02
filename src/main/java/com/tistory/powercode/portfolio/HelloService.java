package com.tistory.powercode.portfolio;

import com.tistory.powercode.portfolio.mapper.HelloMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class HelloService {
    @Autowired
    private HelloMapper helloMapper;

    public String hello(Map param){
        String result = helloMapper.hello(param);
        return result;
    }
}
