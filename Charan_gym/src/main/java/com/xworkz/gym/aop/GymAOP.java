package com.xworkz.gym.aop;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class GymAOP {

    private static final Logger log = LoggerFactory.getLogger(GymAOP.class);

    @Before("execution(* com.xworkz.gym.controller.UserLoginController.onLogin(..))")
    public void beforeUserLogin(){
    log.info("before UserLogin");
        System.out.println("before User Login");
    }

    @AfterReturning(pointcut = "execution(* com.xworkz.gym.service.*.validteUserPasswordByEmail(..))",returning = "res")
    public  void userLogin(Integer res){
      if(res==2)
          log.info("user login successfull");
      else if (res==1) {
          log.info("Set new password");
      } else if (res==3) {
          log.info("wrong password count increase By 1");
      } else if (res==4) {
          log.info("Account locked");
      } else if (res==5) {
          log.info("try after 2 min");
      }

    }



}
