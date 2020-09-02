@if (count($errors) > 0)
    <div class="content-area py-1">
        <div class="container-fluid">
            <div class="alert alert-danger">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
@endif

@if(Session::has('flash_error'))
    <div class="content-area py-1">
        <div class="container-fluid">
            <div class="alert alert-danger">
                <button type="button" class="close" data-dismiss="alert">×</button>
                {{ Session::get('flash_error') }}
            </div>
        </div>
    </div>
@endif


@if(Session::has('flash_success'))
    <div class="content-area py-1">
        <div class="container-fluid">
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert">×</button>
                {{ Session::get('flash_success') }}
            </div>
        </div>
    </div>
@endif