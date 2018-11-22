@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    <div class="alert alert-success" role="alert">You have ({{$count}}) New Notification <a href="{{route('viewNotification')}}">View All</a></div>
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
Echo.private('App.User.' + userId)
    .notification((notification) => {
         console.log(notification.type);
});
</script>
@endsection
