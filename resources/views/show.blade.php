<title>{{ $post->title }}</title>
<meta name="title" content="{{ $post->title }}">
<meta name="description" content="{{ $post->meta_desc }}">
<meta name="keywords" content="{{ $post->keywords }}">

@extends('layouts.app')
@section('content')
    <div class="container my-5">
        <div class="row">
            <div class="card">
                <img src="{{ asset('storage/'.$post->cover) }}" alt="" class="img-fluid">
                    <div class="card-body">
                        <h1 class="card-title">{{ $post->title }}</h1>
                        <div class="d-flex my-2">
                            <small class="text-muted">by {{ $post->user->name }} ・ {{ Carbon\Carbon::parse($post->created_at)->isoFormat('D MMMM Y'); }} </small>
                        </div>
                        <p>{{ $post->desc }}</p>
                        <div class="card-footer bg-transparent d-flex mx-auto">
                            <a style="text-decoration: none" href="{{ route('category',$post->category->slug) }}" class="text-dark"> {{ $post->category->name }} </a>
                            <div class="d-flex ml-auto">
                                @foreach ($post->tags as $item)
                                    <a style="text-decoration: none" href="{{ route('tag', $item->slug) }}" class="badge badge-secondary mr-1"> {{ $item->name }} </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
@endsection