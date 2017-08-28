package Nillouise.service;

import Nillouise.model.User;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Service
public class LoginService
{
    public boolean check(User user)
    {
        for (User i:RegistService.userList)
        {
            if(i.getUsername().equals(user.getUsername()))
            {
                if(i.getPassword().equals(user.getPassword()))
                {
                    user.copyFrom(i);
                    return true;
                }else{
                    return false;
                }
            }
        }
        return false;
    }


}
