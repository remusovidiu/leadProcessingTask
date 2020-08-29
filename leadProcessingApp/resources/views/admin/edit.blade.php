@extends('layouts.admin')

@section('body')

<div>
    <form action="{{ route('admin-update',['id' => $emails->id ])}}" method="post">

        {{csrf_field()}}

        <div class="form-group row">
            <div class="col-*">
                <div class="form-check">
                    <label class="form-check-label" style="font-size:20px">
                        <input style="zoom:1.3" type="radio" class="form-check-input" name="category" value="1">Positive reply
                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label" style="font-size:20px">
                        <input style="zoom:1.3" type="radio" class="form-check-input" name="category" value="2">Neutral reply
                    </label>
                </div>
                <div class="form-check">
                    <label class="form-check-label" style="font-size:20px">
                        <input style="zoom:1.3" type="radio" class="form-check-input" name="category" value="3">Not a Lead
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group row mb-0">
            <button type="submit" class="btn btn-primary">
                Update!
            </button>
        </div>
    </form>

</div>

@endsection