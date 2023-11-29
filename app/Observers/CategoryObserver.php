<?php

namespace App\Observers;

use Illuminate\Support\Str;
use App\Models\Category;

class CategoryObserver
{
    public function creating(Category $category)
    {
        $category->url = Str::slug($category->title, '-');
    }

    public function updating(Category $category)
    {
        $category->url = Str::slug($category->title, '-');
    }

    public function created(Category $category): void
    {
        //
    }

    public function updated(Category $category): void
    {
        //
    }

    public function deleted(Category $category): void
    {
        //
    }

    public function restored(Category $category): void
    {
        //
    }

    public function forceDeleted(Category $category): void
    {
        //
    }
}
