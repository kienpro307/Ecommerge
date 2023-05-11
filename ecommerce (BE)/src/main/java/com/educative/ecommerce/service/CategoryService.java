package com.educative.ecommerce.service;

import com.educative.ecommerce.exceptions.CustomException;
import com.educative.ecommerce.model.Category;
import com.educative.ecommerce.repository.CategoryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {

    @Autowired
    CategoryRepo categoryRepo;

    public void createCategory(Category category) {
        categoryRepo.save(category);
    }

    public List<Category> listCategory() {
        return categoryRepo.findAll();
    }

    public void editCategory(int categoryId, Category updateCategory) {
        Category category = categoryRepo.getById(categoryId);
        category.setCategoryName(updateCategory.getCategoryName());
        category.setDescription(updateCategory.getDescription());
        category.setImageUrl(updateCategory.getImageUrl());
        categoryRepo.save(category);
    }

    public boolean findById(int categoryId) {
        return categoryRepo.findById(categoryId).isPresent();
    }

    public void deleteCategory(int categoryId) {
        Optional<Category> optionalCategory = categoryRepo.findById(categoryId);
        if (optionalCategory.isEmpty()) {
            throw new CustomException("categoryId is invalid" + categoryId);
        }

        Category category = optionalCategory.get();
        categoryRepo.delete(category);
    }
}
