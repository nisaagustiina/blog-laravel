<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{Category, Tag, Post};
use Illuminate\Support\Facades\DB;

class FrontController extends Controller
{
    public function index()
    {
        $posts = Post::latest()->paginate(5);
        return view('welcome', compact('posts'));
    }

    public function show($slug)
    {
        $post = Post::where('slug', $slug)->first();
        return view('show', compact('post'));
    }

    public function category(Category $category)
    {
        $posts = $category->posts()->latest()->paginate(5);
        return view ('welcome',compact('category','posts'));
    }

    public function tag(Tag $tag)
    {
        $posts = $tag->posts()->latest()->paginate(5);
        return view ('welcome',compact('tag','posts'));
    }

    public function search(Request $request)
    {
        $keyword = $request->search;
        $posts = Post::where('title','like',"%". $keyword ."%")->paginate(5);
        return view('welcome', compact('posts'))->with('i',(request()->input('page',1)-1)*5);
    }

}