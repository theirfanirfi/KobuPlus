<?php  use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use App\Http\Models\Follow;
use App\Http\Models\Enterprise;
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>KubuPlus</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    @yield('og')
   <!-- Bootstrap core CSS     -->
   <link href="{!! URL::to('/assets/css/bootstrap.min.css') !!}" rel="stylesheet" />

   <!-- Animation library for notifications   -->
   <link href="{!! URL::asset('/assets/css/animate.min.css') !!}" rel="stylesheet"/>

   <!--  Paper Dashboard core CSS    -->
   <link href="{!! URL::asset('/assets/css/paper-dashboard.css') !!}" rel="stylesheet"/>


   <!--  Fonts and icons     -->
   <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
   <link href="{!! URL::asset('/assets/css/themify-icons.css') !!}" rel="stylesheet"><!-- JavaScript -->
   <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/alertify.min.js"></script>
   
   <!-- CSS -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.min.css"/>
   <!-- Default theme -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/default.min.css"/>
   <!-- Semantic UI theme -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/semantic.min.css"/>
   <!-- Bootstrap theme -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/bootstrap.min.css"/>
   
   <!-- 
       RTL version
   -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/alertify.rtl.min.css"/>
   <!-- Default theme -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/default.rtl.min.css"/>
   <!-- Semantic UI theme -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/semantic.rtl.min.css"/>
   <!-- Bootstrap theme -->
   <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.11.0/build/css/themes/bootstrap.rtl.min.css"/>
   
    <link href="{!! URL::asset('css/userlist.css') !!} " rel="stylesheet">
    <!--   Core JS Files   -->
    <script src="{!! URL::asset('/assets/js/jquery-1.10.2.js') !!}" type="text/javascript"></script>
    <script src="{!! URL::asset('/assets/js/bootstrap.min.js') !!}" type="text/javascript"></script>
    <!--  Charts Plugin -->
    <script src="{!! URL::asset('/assets/js/chartist.min.js') !!}"></script>
    <script src="{!! URL::asset('js/chat.js') !!}"></script>

    <!--  Notifications Plugin    -->
    <script src="{!! URL::asset('/assets/js/bootstrap-notify.js') !!}"></script>
    <script src="{!! URL::asset('/js/tinymce/jquery.tinymce.min.js') !!}"></script>
    <script src="{!! URL::asset('/js/tinymce/tinymce.min.js') !!}"></script>
    <script>tinymce.init({ selector:'textarea' });</script>
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href="{!! URL::asset('css/alert.css') !!} " rel="stylesheet">
    <link href="{!! URL::asset('css/chat.css') !!} " rel="stylesheet">
    <link href="{!! URL::asset('css/normalize.min.css') !!} " rel="stylesheet">
    <link href="{!! URL::asset('css/animate.min.css') !!} " rel="stylesheet">
  

</head>
<body>

<div class="wrapper">
	<div class="sidebar" data-background-color="black" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebars background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="{{URL::to('/home')}}" class="simple-text">
                    Welcome {{Auth::user()->name}}
                </a>
            </div>

            <ul class="nav">

                  
                    <li class="active">
                            @if(Session('ep') == 1 || Session('superEnterpriseUser') == 1)

                            <a href="{{ URL::to('/home/addenterprise/') }}  ">
                             @else
                               <a href="#" onclick="nop();">
                                @endif 
                                <i class="fa fa-building-o"></i>
                                <p>Create Enterprise</p>
                            </a>
                        </li>

                @if(Session('haveEnterprise')==1)
               <li class="active">
                    <a href="{{ URL::to('/home/MyEnterprises') }}">
                        <i class="ti-pie-chart"></i>
                        <p>My Enterprises</p>
                    </a>
                </li>
                @endif
               
               @if(Session('up') == 1 || Session('superEnterpriseUser') == 1 && Session('haveEnterprise')==1)
                
                <li class="">
                        <a href="{{URL::to('/home/users')}}">
                            <i class="ti-user"></i>
                            <p>Users</p>
                        </a>
                    </li>
                    @endif

               @if(Session('cp') == 1 || Session('superEnterpriseUser') ==1 && Session('haveEnterprise')==1)
                    
                    <li class="">
                            <a href="{{ URL::to('/home/contacts') }}">
                                <i class="fa fa-address-card-o"></i>
                                <p>Contacts</p>
                            </a>
                        </li>
                    @endif

                @if(Session('haveEnterprise')==1)
                    
                        <li class="">
                                <a href="{{ URL::to('/home/documents') }}">
                                    <i class="fa fa-file-pdf-o"></i>
                                    <p>Documents</p>
                                </a>
                            </li>
                            @endif

                @if(Session('haveEnterprise')==1)
                            
                            <li class="">
                                    <a href="#" onclick="message()">
                                        <i class="fa fa-envelope"></i>
                                        <p>Messages</p>
                                    </a>
                                </li>
                @endif

                @if(Session('haveEnterprise')==1)
                
                                <li class="">
                                        <a href="{{ URL::to('/home/MyEnterprises') }}">
                                            <i class="fa fa-tasks"></i>
                                            <p>Tasks</p>
                                        </a>
                                    </li>
                @endif
                                    <li class="">
                                            <a href="{{ URL::to('/home/learningresource') }}">
                                                <i class="fa fa-book"></i>
                                                <p>Learning Resources</p>
                                            </a>
                                        </li>
                                        <li class="">
                                                <a href="#" onclick="showInviteModal(this);">
                                                    <i class="fa fa-share"></i>
                                                    <p>Invite</p>
                                                </a>
                                            </li>
                                           

            </ul>
    	</div>
    </div>

    <div class="main-panel">
	<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    @if(Session('superEnterpriseUser') == 1)
                    @if(Session('plan_title') == "Enterprise")
                <h5>Current Plan: {{Session('plan_title')}} <a href="{{URL::to('/home/upgrade')}}" class="btn btn-info">Downgrade</a></h5>
                   
                    @else
                    <h5>Current Plan: {{Session('plan_title')}} <a href="{{URL::to('/home/upgrade')}}" class="btn btn-info">Upgrade</a></h5>
                    @endif
                    @endif
                </div>
                <div class="collapse navbar-collapse">
                   <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="{{ URL::to('/home/learningresource') }}">
                                <i class="fa fa-caret-right" style="color:Red;font-size:20px;"></i>
								<p>Quick Start Guide</p>
                            </a>
                        </li>
                       
                        <li>
                                <a id="fmodal" href="#">
                                    <i class="fa fa-users"></i>
                                    <p>Browse other Enterprises</p>
                                </a>
                            </li>
						<li>
                            <a href="{{URL::to('/home/calendar') }}">
								<i class="fa fa-calendar"></i>
								<p>Calender</p>
                            </a>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                  <i class="ti-settings"></i>
                                  <p>Settings</p>
                                
                            </a>
                            <ul class="dropdown-menu">
                            <li><a href="{{URL::to('/home/profile')}}">Profile</a></li>
               @if(Session('cp') == 1 || Session('superEnterpriseUser') ==1)
                            
                            <li><a href="{{URL::to('/home/editProfile')}}">Settings</a></li>
                            @endif  
                            <li><a onclick="showInviteModal(this);"  href="#">Invite to KobuPlus</a></li>
                              <li><a  href="{{ URL::to('/logout') }}">Logout</a></li>
                              <!--  -->
                      
                            </ul>
                      </li>
                    </ul>

                </div>
            </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    @yield('maincontent')
                </div>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                        </li>
                    </ul>
                </nav>

                <div class="chat_box">
                        <div class="chat_head"> Chat</div>
                        <div class="chat_body"> 
                         <?php 
                         $user_id = Auth::user()->id;
                         $enterpirses = Enterprise::where('user_id','=',$user_id)->get(); ?>
                         @if(!empty($enterpirses))
                         @foreach ($enterpirses as $ee)
                             
                
                       <?php  $following = Follow::where('follower_e_id','=',$ee->e_id)->get(); ?>
                         @if(!empty($following))   
                         @foreach($following as $f)
                         <?php $e = Enterprise::find($f->followed_e_id); ?>
                       <a style="color:black;" href="{{URL::to('/home/chatwithEnterprise/')}}/{{$ee->e_id}}/{{$e->e_id}}"><div class="user">{{$e->b_name}}</div></a>
                        @endforeach
                        @endif
                        @endforeach
                        @endif
                        </div>

                      </div>
                    
				<div class="copyright pull-right">
  </div>
            </div>
        </footer>

    </div>
</div>



    <!-- Modal -->
                <div class="modal modal-plan fade" id="exampleModal" style="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add New Plan</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <input type="text" class="form-control" id="dt_title" placeholder="Plan Title" style="border:1px solid black;" />
                        <br/>
                        <textarea class="form-control" id="dt_desc" rows="12" ></textarea>
                        <input type="hidden" id="url" e_id="<?php echo !empty($enterprise->e_id) ? $enterprise->e_id : ''; ?>" back_url="{{URL::to('/home/enterpriseDocs/')}}/{{!empty($enterprise->e_id) ? $enterprise->e_id : ''}}" />
                        {{ csrf_field() }}
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" onclick="subNewPlan(this);" class="btn btn-primary">Save changes</button>
                      </div>
                    </div>
                  </div>
                </div>
    
                <!-- Sub Plan Modal -->
                <div class="modal modal-sub-plan fade submodal" id="exampleModal" style="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add New Plan</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <input type="text" class="form-control" id="sub_title" placeholder="Plan Title" style="border:1px solid black;" />
                        <br/>
                        <textarea class="form-control" id="sub_desc" rows="12" ></textarea>
                        <input type="hidden" id="dt_id" />
                        <input type="hidden" id="e_id" />
                        <input type="hidden" id="back_url" />
                        <input type="hidden" id="url2" />
                        {{ csrf_field() }}
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" onclick="subNewSubPlan(this);" class="btn btn-primary">Save changes</button>
                      </div>
                    </div>
                  </div>
                </div>


                

                <div class="modal fade printmodal" id="exampleModal" style="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Print Enterprise</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                            <p>Select Options to print</p>
                            {{Form::open(['url'=> '/print', 'method' => 'post'])}}
                            <table class="table">
                                <tr>
                                    <td>
                                <input type="checkbox"  id="users" name="print_users" /> Users

                                    </td>
                                    <td>
                                <input type="checkbox"  id="contacts" name="print_contacts" /> Contacts
                                        
                                    </td>
                                    <td>
                                <input type="checkbox" id="documents" name="print_documents"  /> Documents
                                        
                                    </td>
                                </tr>
                            </table>
                          <br/>
                          
                          
                          <input type="hidden" id="e_id_print" name="e_id" />
                          <input type="hidden" id="url_print" value="{{URL::to('/print/s')}}" />
                
                          {{ csrf_field() }}
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          <button type="submit"  class="btn btn-primary">Print</button>
                        </div>

                        {{Form::close()}}
                      </div>
                    </div>
                  </div>







                  <!-- Followers Modal -->
                  <div class="modal fade followers" id="exampleModal" style="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                       
                            <div class="col-xl-6">
                                <!--begin:: Widgets/User Progress -->
                                <div class="m-portlet m-portlet--full-height ">
                                    <div class="m-portlet__head">
                                        <div class="m-portlet__head-caption">
                                            <div class="m-portlet__head-title">
                                                <h3 class="m-portlet__head-text">
                                                   
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="m-portlet__head-tools">
                                            <ul class="nav nav-pills nav-pills--brand m-nav-pills--align-right m-nav-pills--btn-pill m-nav-pills--btn-sm" role="tablist">
                                                <li class="nav-item m-tabs__item">
                                                    <a class="nav-link m-tabs__link active" data-toggle="tab" href="#m_widget4_tab1_content" role="tab">
                                                        Following
                                                    </a>
                                                </li>
                                                <li class="nav-item m-tabs__item">
                                                    <a class="nav-link m-tabs__link" data-toggle="tab" href="#m_widget4_tab2_content" role="tab">
                                                        Followers
                                                    </a>
                                                </li>
                                                <li class="nav-item m-tabs__item">
                                                    <a class="nav-link m-tabs__link" data-toggle="tab" href="#m_widget4_tab3_content" role="tab">
                                                        Matched
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="m-portlet__body">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="m_widget4_tab1_content">
                                                <div class="m-widget4 m-widget4--progress">
                                                 
                                                    <?php 
                                                    $user_id = Auth::user()->id;
                                                    $enterpirses = Enterprise::where('user_id','=',$user_id)->get(); ?>
                                                    @if(!empty($enterpirses))
                                                    @foreach($enterpirses as $ee)
                                                   <?php $followings = Follow::where('follower_e_id','=',$ee->e_id)->get();
                                                    
                                                    ?>
                                                    @if(!empty($followings))
                                                    @foreach($followings as $fo)
                                                   <?php $e = Enterprise::find($fo->followed_e_id); ?>
                                                    @if(!empty($e))
                                                    <div class="m-widget4__item item_{{$fo->f_id}}">
                                                        <div class="m-widget4__img m-widget4__img--pic">
                                                            <img src="{{URL::to('/')}}/{{$e->logo_path}}" alt="">
                                                        </div>
                                                        <div class="m-widget4__info">
                                                            <span class="m-widget4__title">
                                                                {{$e->b_name}}
                                                            </span>
                                                            <br>
                                                            <span class="m-widget4__sub">
                                                               {{$e->p_b_idea}}
                                                            </span>
                                                        </div>
                                                    
                                                        <div class="m-widget4__ext">
                                                            <a href="#" follwere_e_id="{{$fo->follower_e_id}}" followed_e_id="{{$fo->followed_e_id}}/{{$fo->f_id}}" url="{{URL::to('/home/unfollow')}}/{{$fo->f_id}}" f_id="{{$fo->f_id}}" onclick="unfollow(this);" class="m-btn m-btn--hover-brand m-btn--pill btn btn-sm btn-secondary">
                                                                unfollow
                                                            </a>
                                                        </div>
                                                    </div>
                                                    @endif
                                                    @endforeach
                                                    @else
                                                    <h1>You have not followed any enterprise</h1>
                                                    @endif
                                                    @endforeach
                                                    @endif

                                                </div>
                                            </div>
                                            <div class="tab-pane" id="m_widget4_tab2_content">
                                                <div class="m-widget4 m-widget4--progress">
                                                 
                                                    <?php 
                                                    $user_id = Auth::user()->id;
                                                    $enterpirses = Enterprise::where('user_id','=',$user_id)->get(); ?>
                                                    @if(!empty($enterpirses))
                                                    @foreach($enterpirses as $ee)
                                                   <?php $followings = Follow::where('follower_e_id','=',$ee->e_id)->get();
                                                    
                                                    ?>
                                                    @if(!empty($followings))
                                                    @foreach($followings as $fo)
                                                   <?php $e = Enterprise::find($fo->follower_e_id); ?>
                                                    @if(!empty($e))
                                                    <div class="m-widget4__item item_{{$fo->f_id}}">
                                                        <div class="m-widget4__img m-widget4__img--pic">
                                                            <img src="{{URL::to('/')}}/{{$e->logo_path}}" alt="">
                                                        </div>
                                                        <div class="m-widget4__info">
                                                            <span class="m-widget4__title">
                                                                {{$e->b_name}}
                                                            </span>
                                                            <br>
                                                            <span class="m-widget4__sub">
                                                               {{$e->p_b_idea}}
                                                            </span>
                                                        </div>
                                                    
                                                        <div class="m-widget4__ext">
                                                           <?php $cf = Follow::where('follower_e_id','=',$ee->e_id)->where('followed_e_id','=',$e->e_id)->get()->count(); ?> 
                                                           @if($cf > 0) 
                                                           <a href="#" follwere_e_id="{{$fo->follower_e_id}}" followed_e_id="{{$fo->followed_e_id}}/{{$fo->f_id}}" url="{{URL::to('/home/unfollow')}}/{{$fo->f_id}}" f_id="{{$fo->f_id}}" onclick="unfollow(this);" class="m-btn m-btn--hover-brand m-btn--pill btn btn-sm btn-secondary">
                                                                unfollow
                                                            </a>
                                                            @else
                                                            <a href="#" class_id="{{$e->e_id}}" url="{{URL::to('/home/followMatched/')}}/{{$ee->e_id}}/{{$e->e_id}}/{{$ee->user_id}}/{{$e->user_id}}" follower_e_id="{{$ee->e_id}}"  followed_e_id="{{$e->e_id}}" follower_user_id="{{$ee->user_id}}" followed_user_id="{{$e->user_id}}" onclick="followMatched(this);" class="m-btn m-btn--hover-brand m-btn--pill btn btn-sm btn-secondary">
                                                                    follow
                                                                 </a>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    @endif
                                                    @endforeach
                                                    @else
                                                    <h1>You have no follower</h1>
                                                    @endif
                                                    @endforeach
                                                    @endif


                                                </div>
                                            </div>
                                            <div class="tab-pane" id="m_widget4_tab3_content">
                                                    <div class="m-widget4 m-widget4--progress">
                                                 
                                                            <?php
                                                            use Illuminate\Support\Facades\Auth;
                                                            $user_id = Auth::user()->id;
                                                            $es = Enterprise::where('user_id','=',$user_id)->get();
                                                            ?>
                                                            @if(!empty($es))
                                                            @foreach($es as $ee)
                                                           <?php $enterprises = Enterprise::where('p_b_idea','=',$ee->p_b_idea)->where('e_id','!=',$ee->e_id)->where('user_id','!=',Auth::user()->id)->get();
                                                            
                                                            ?>
                                                            @if(!empty($enterprises))
                                                            @foreach($enterprises as $e)
                                                            <?php $f = Follow::where('follower_e_id','=',$ee->e_id)->where('followed_e_id','=',$e->e_id)->get()->count(); ?>
                                                            @if(!($f > 0))
                                                            <div class="m-widget4__item item_{{$e->e_id}}">
                                                                <div class="m-widget4__img m-widget4__img--pic">
                                                                    <img src="{{URL::to('/')}}/{{$e->logo_path}}" alt="">
                                                                </div>
                                                                <div class="m-widget4__info">
                                                                    <span class="m-widget4__title">
                                                                        {{$e->b_name}}
                                                                    </span>
                                                                    <br>
                                                                    <span class="m-widget4__sub">
                                                                       {{$e->p_b_idea}}
                                                                    </span>
                                                                </div>
                                                            
                                                                <div class="m-widget4__ext">

                                                                    <a href="#" class_id="{{$e->e_id}}" url="{{URL::to('/home/followMatched/')}}/{{$ee->e_id}}/{{$e->e_id}}/{{$ee->user_id}}/{{$e->user_id}}" follower_e_id="{{$ee->e_id}}"  followed_e_id="{{$e->e_id}}" follower_user_id="{{$ee->user_id}}" followed_user_id="{{$e->user_id}}" onclick="followMatched(this);" class="m-btn m-btn--hover-brand m-btn--pill btn btn-sm btn-secondary">
                                                                       follow
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            @endif
                                                            @endforeach
                                                            @else
                                                            <h1>You have not followed any enterprise</h1>
                                                            @endif
                                                            @endforeach
                                                            @endif
        
        
                                                        </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--end:: Widgets/User Progress -->
                            
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
                  </div>




                  <!-- invite modal -->
                  <div class="modal fade invite" id="exampleModal" style="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Invite Friend</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                           <p>Invite through Email, SMS or both.</p>
                            {{Form::open(['url'=> '/home/invite', 'method' => 'post', 'id' => 'inviteFormSubmit'])}}
                            <table class="table">
                                <tr>
                                    <td>
                                <input type="checkbox"  id="emailInvite" name="emailInvite" />Email

                                    </td>
                                    <td>
                                <input type="checkbox"  id="smsInvite" name="smsInvite" /> SMS
                                        
                                    </td>
                                
                                </tr>

                                <tr>
                                    <td>Friend Mobile Number: <td><input type="number" name="mobileNumber" class="form-control" id="mobileNumber" maxlength="11" placeholder="Mobile Number" /></td>
                                </tr>

                                <tr>
                                    <td>Friend Email: <td><input type="email" name="femail" class="form-control" id="femail" placeholder="Email" /></td>
                                </tr>

                                <tr>
                                <td colspan="2"><textarea class="form-control" name="invite_message" id="invite_message">{{Auth::user()->name}} has invited you to join KobuPlus.</textarea></td>
                                </tr>

                            </table>
                          <br/>
                          
                          
                          <input type="hidden" id="e_id_print" name="e_id" />
                
                          {{ csrf_field() }}
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                          <button type="submit"  class="btn btn-primary">Send Invitation</button>
                        </div>

                        {{Form::close()}}
                      </div>
                    </div>
                  </div>



                  <!-- add event modal -->
                  <div class="modal fade addEventagain" id="exampleModal" style="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="exampleModalLabel">Add Event</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                              
                                {{Form::open(['url'=> '/home/addevent', 'method' => 'post'])}}
                                
                              
                          <label>Event Title</label>    
                        <input type="text" id="event_title" name="event_title"  class="form-control" />
                        <label>Start Date</label>    
                        <input type="date" id="start_date" name="start_date" class="form-control" />
                        <label>End Date</label>    
                        <input type="date" id="end_date" name="end_date" class="form-control" />
                        <input type="hidden" id="user_id" name="user_id" value="{{Auth::user()->id}}" />
                    
                              {{ csrf_field() }}
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                              <button type="submit"  class="btn btn-primary">Add Event</button>
                            </div>
    
                            {{Form::close()}}
                          </div>
                        </div>
                      </div>
</body>

    
     <script src="{!! URL::asset('/assets/js/paperdashboard.js') !!}"></script>
     <script src="{!! URL::asset('/assets/js/myscript.js') !!}"></script>
     <script src="{!! URL::asset('js/animatedModal.min.js') !!}"></script>
    <script>

        function nop()
        {
            alertify.set('notifier','position', 'top-left');
 alertify.error("You don't have permission to perform the action.");
        
        }

       
       /*  $.notify({
             message: "working"
         },
         {
             type: 'success',
             timer: 4000
         }
         );
        */ 

        function message()
        {
            $('.chat_body').slideToggle('slow');
        }
     </script>
    <input type="hidden" id="upgradeurl" value="{{URL::to('/home/upgrade/')}}" />
     @if(Session('error-upgrade'))
     <script>
     alertify.confirm('Upgrade Plan', '{{Session('error-upgrade')}}', function(){ var url = $('#upgradeurl').val();
     window.location.href = url; }
                     , function(){ });
     </script>
     @endif
</html>
