@extends('layouts.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="table-responsive">
                <a href="{{ route('posts.create') }}" class="btn btn-primary my-3">
                    Add Post
                </a>
                @if (session('success'))
                <div class="alert alert-success alert-dismissible fade show my-1" role="alert">
                        {{ session('success') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div> 
                @endif
                @if (session('error'))
                <div class="alert alert-danger alert-dismissible fade show my-1" role="alert">
                    {{ session('error') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div> 
                @endif
                <table class="table table-bordered" id="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Cover</th>
                            <th scope="col">Title</th>
                            <th scope="col">Description</th>
                            <th scope="col">Category</th>
                            <th scope="col">Author</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($posts as $key => $item)
                            <tr>
                                <td scope="row">{{ ++$key }}</td>
                                <td><img src="{{ asset('storage/'.$item->cover) }}" alt=""></td>
                                <td>{{ $item->title }}</td>
                                <td>{{ Str::limit(strip_tags($item->desc),60) }}</td>
                                <td>{{ $item->category->name }}</td>
                                <td>{{ $item->user->name }}</td>
                                <td>
                                    <div style="display:flex">
                                        <a style="margin-right:5px" href="{{ route('posts.edit', $item->id) }}" class="btn btn-success btn-sm">Edit</a>
                                        <form action="{{ route('posts.destroy',[$item->id]) }}" method="post" class="d-inline" onsubmit="return confirm('Move post to trash?')">
                                        @csrf
                                            <input type="hidden" name="_method" value="DELETE">
                                            <input type="submit" value="Delete" class="btn btn-danger btn-sm">
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection