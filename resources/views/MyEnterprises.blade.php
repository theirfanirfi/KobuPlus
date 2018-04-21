@extends('layouts.masterlayout')
@section('maincontent')
<div class="row">
        <h4 style='color:green;'></h4>
        <h4 style='color:red;'></h4>
        @if (session('msg-success'))
        <div class="alert alert-success">
            {{ session('msg-success') }}
        </div>
    @endif

    @if (session('msg-failure'))
    <div class="alert alert-danger">
        {{ session('msg-failure') }}
    </div>
@endif
</div>
@if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
@if(!$countenterprise)
@if(Session('ep') == 1 || Session('superEnterpriseUser') == 1)

<a href="{{ URL::to('/home/addenterprise/') }}  "><div class="col-lg-6 col-sm-6">
   @else
   <a href="#" onclick="nop();"><div class="col-lg-6 col-sm-6">
    @endif                   
    <div class="card">
                            <div class="content">
        
                                <div class="row">   
                                    <div class="col-xs-4">
                                        <div class="icon-big icon-success text-center">
                                            <i class="ti-plus"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Create</p>
                                            Enterprise
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <br/>
                                    <br/>
                                    <div class="stats">
                                        <!-- <i class="ti-calendar"></i> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div></a>
@endif

@foreach($enterprises as $e)
@if(Session('ep') == 1 || Session('superEnterpriseUser') ==1)
<a href="{{ URL::to('/home/senterprise/'.$e->e_id) }}  ">
@else
<a href="#" onclick="nop();">
    @endif
    <div class="col-lg-6 col-sm-6">
                        <div class="card">
                            <div class="content">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <div class="icon-big icon-success text-center">
                                            <i class="fa fa-building-o"></i>
                                        </div>
                                    </div>
                                    <div class="col-xs-7">
                                        <div class="numbers">
                                            <p>Enterprise</p>
                                            {{ $e->b_name }}
                                        </div>
                                    </div>
                                </div>
                                <div class="footer">
                                    <hr />
                                    <div class="stats">
                                        <i class="ti-calendar"></i> Created on: {{ substr($e->created_at,0,10) }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div></a>
@endforeach

@endsection