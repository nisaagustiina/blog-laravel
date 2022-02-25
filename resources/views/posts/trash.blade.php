@extends('layouts.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="table-responsive">
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
                            <th scope="col">Writer</th>
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
                                        <form action="{{ route('posts.restore',$item->id) }}" method="post" class="d-inline">
                                        @csrf
                                        <input style="margin-right:5px" type="submit" value="Restore" class="btn btn-success btn-sm">
                                        </form>
                                        <form action="{{ route('posts.deletePermanent',[$item->id]) }}" method="post" class="d-inline" onsubmit="return confirm('Delete this data permanently?')">
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