package com.chengp.blog.service;

import com.chengp.blog.entity.Blog;
import com.chengp.blog.entity.User;
import com.chengp.blog.repository.BlogRepository;
import com.chengp.blog.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;

/**
 * Created by pc on 2/27/16.
 */
@Service
public class BlogService {

    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private UserRepository userRepository;

    public void save(Blog blog, String name) {

        User user = userRepository.findByName(name);
        blog.setUser(user);
        blogRepository.save(blog);
    }

    @PreAuthorize("#blog.user.name == authentication.name or hasRole('ROLE_ADMIN')")
    public void delete(@P("blog") Blog blog) {

        blogRepository.delete(blog);
    }

    public Blog findOne(int id) {

        return blogRepository.findOne(id);
    }
}
