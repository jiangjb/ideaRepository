<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>爱.电影 - 订票第二步</title>
        <link rel="icon" href="${base.contextPath}/static/img/logoicon.png"/>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="${base.contextPath}/static/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <!-- Roboto -->
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="${base.contextPath}/static/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="${base.contextPath}/static/css/external/jquery.selectbox.css" rel="stylesheet" />
    
        <!-- Custom -->
        <link href="${base.contextPath}/static/css/style.css?v=1" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="${base.contextPath}/static/css/index.css"/>

        <!-- Modernizr --> 
        <script src="${base.contextPath}/static/js/external/modernizr.custom.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --> 
    <!--[if lt IE 9]> 
    	<script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script> 
		<script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>		
    <![endif]-->
</head>
 
<body>
    <div class="wrapper place-wrapper">
        <!-- Banner -->
        

        <!-- Header section
     	<#include "/frontpage/header.ftl"/> -->
     	<#import "/frontpage/header.ftl" as headerPage>
        <@headerPage.headers returnURL="/index/select" pid=-1/>

        <!-- Search bar -->
        
        <!-- Main content -->
        <div class="place-form-area">
        <section class="container">
            <div class="order-container">
                <div class="order">
                    <img class="order__images" alt='' src="${base.contextPath}/static/images/tickets.png">
                    <p class="order__title">立即购票 <br><span class="order__descript">体验观影乐趣</span></p>
                    <div class="order__control">
                        <a href="#" class="order__control-btn active">购票</a>
                       <#--<a href="#" class="order__control-btn">预定</a>--> 
                    </div>
                </div>
            </div>
                <div class="order-step-area">
                    <div class="order-step first--step order-step--disable ">1. 选择影片，场次</div>
                    <div class="order-step second--step">2. 选择座位</div>
                </div>
            
            <div class="choose-sits">
                <div class="choose-sits__info choose-sits__info--first">
                    <ul>
                        <li class="sits-price marker--none"><strong>票价</strong></li>
                        <li class="sits-price sits-price--cheap">¥ 10.00</li>
                        <li class="sits-price sits-price--middle">¥ 20.00</li>
                        <li class="sits-price sits-price--expensive">¥ 30.00</li>
                    </ul>
                </div>

                <div class="choose-sits__info">
                    <ul>
                        <li class="sits-state sits-state--not">已售座位</li>
                        <li class="sits-state sits-state--your">已选座位</li>
                    </ul>
                </div>
                
                <div class="col-sm-12 col-lg-10 col-lg-offset-1">
                <div class="sits-area hidden-xs">
                    <div class="sits-anchor">银幕</div>

                    <div class="sits">
                        <aside class="sits__line">
                            <span class="sits__indecator">A</span>
                            <span class="sits__indecator">B</span>
                            <span class="sits__indecator">C</span>
                            <span class="sits__indecator">D</span>
                            <span class="sits__indecator">E</span>
                            <span class="sits__indecator">F</span>
                            <span class="sits__indecator">G</span>
                            <span class="sits__indecator">I</span>
                            <span class="sits__indecator additional-margin">J</span>
                            <span class="sits__indecator">K</span>
                            <span class="sits__indecator">L</span>
                        </aside>

                            <div class="sits__row">
                                <span class="sits__place sits-price--cheap" data-place='A2' data-price='10'>A2</span>
                                <span class="sits__place sits-price--cheap" data-place='A3' data-price='10'>A3</span>
                                <span class="sits__place sits-price--cheap" data-place='A4' data-price='10'>A4</span>
                                <span class="sits__place sits-price--cheap" data-place='A5' data-price='10'>A5</span>
                                <span class="sits__place sits-price--cheap" data-place='A6' data-price='10'>A6</span>
                                <span class="sits__place sits-price--cheap" data-place='A7' data-price='10'>A7</span>
                                <span class="sits__place sits-price--cheap" data-place='A8' data-price='10'>A8</span>
                                <span class="sits__place sits-price--cheap" data-place='A9' data-price='10'>A9</span>
                                <span class="sits__place sits-price--cheap" data-place='A10' data-price='10'>A10</span>
                                <span class="sits__place sits-price--cheap" data-place='A11' data-price='10'>A11</span>
                                <span class="sits__place sits-price--cheap" data-place='A12' data-price='10'>A12</span>
                                <span class="sits__place sits-price--cheap" data-place='A13' data-price='10'>A13</span>
                                <span class="sits__place sits-price--cheap" data-place='A14' data-price='10'>A14</span>
                                <span class="sits__place sits-price--cheap" data-place='A15' data-price='10'>A15</span>
                                <span class="sits__place sits-price--cheap" data-place='A16' data-price='10'>A16</span>
                                <span class="sits__place sits-price--cheap" data-place='A17' data-price='10'>A17</span>
                            </div>
                            
                            <div class="sits__row">
                                <span class="sits__place sits-price--cheap" data-place='B1' data-price='10'>B1</span>
                                <span class="sits__place sits-price--cheap" data-place='B2' data-price='10'>B2</span>
                                <span class="sits__place sits-price--cheap" data-place='B3' data-price='10'>B3</span>
                                <span class="sits__place sits-price--cheap" data-place='B4' data-price='10'>B4</span>
                                <span class="sits__place sits-price--cheap" data-place='B5' data-price='10'>B5</span>
                                <span class="sits__place sits-price--cheap" data-place='B6' data-price='10'>B6</span>
                                <span class="sits__place sits-price--cheap" data-place='B7' data-price='10'>B7</span>
                                <span class="sits__place sits-price--cheap" data-place='B8' data-price='10'>B8</span>
                                <span class="sits__place sits-price--cheap" data-place='B9' data-price='10'>B9</span>
                                <span class="sits__place sits-price--cheap" data-place='B10' data-price='10'>B10</span>
                                <span class="sits__place sits-price--cheap" data-place='B11' data-price='10'>B11</span>
                                <span class="sits__place sits-price--cheap" data-place='B12' data-price='10'>B12</span>
                                <span class="sits__place sits-price--cheap" data-place='B13' data-price='10'>B13</span>
                                <span class="sits__place sits-price--cheap" data-place='B14' data-price='10'>B14</span>
                                <span class="sits__place sits-price--cheap" data-place='B15' data-price='10'>B15</span>
                                <span class="sits__place sits-price--cheap" data-place='B16' data-price='10'>B16</span>
                                <span class="sits__place sits-price--cheap" data-place='B17' data-price='10'>B17</span>
                                <span class="sits__place sits-price--cheap" data-place='B18' data-price='10'>B18</span>
                            </div>

                            <div class="sits__row">
                                <span class="sits__place sits-price--cheap" data-place='C1' data-price='10'>C1</span>
                                <span class="sits__place sits-price--cheap" data-place='C2' data-price='10'>C2</span>
                                <span class="sits__place sits-price--cheap" data-place='C3' data-price='10'>C3</span>
                                <span class="sits__place sits-price--cheap" data-place='C4' data-price='10'>C4</span>
                                <span class="sits__place sits-price--cheap" data-place='C5' data-price='10'>C5</span>
                                <span class="sits__place sits-price--cheap" data-place='C6' data-price='10'>C6</span>
                                <span class="sits__place sits-price--cheap" data-place='C7' data-price='10'>C7</span>
                                <span class="sits__place sits-price--cheap" data-place='C8' data-price='10'>C8</span>
                                <span class="sits__place sits-price--cheap" data-place='C9' data-price='10'>C9</span>
                                <span class="sits__place sits-price--cheap" data-place='C10' data-price='10'>C10</span>
                                <span class="sits__place sits-price--cheap" data-place='C11' data-price='10'>C11</span>
                                <span class="sits__place sits-price--cheap" data-place='C12' data-price='10'>C12</span>
                                <span class="sits__place sits-price--cheap" data-place='C13' data-price='10'>C13</span>
                                <span class="sits__place sits-price--cheap" data-place='C14' data-price='10'>C14</span>
                                <span class="sits__place sits-price--cheap" data-place='C15' data-price='10'>C15</span>
                                <span class="sits__place sits-price--cheap" data-place='C16' data-price='10'>C16</span>
                                <span class="sits__place sits-price--cheap" data-place='C17' data-price='10'>C17</span>
                                <span class="sits__place sits-price--cheap" data-place='C18' data-price='10'>C18</span>
                            </div>

                            <div class="sits__row">
                                <span class="sits__place sits-price--cheap" data-place='D1' data-price='10'>D1</span>
                                <span class="sits__place sits-price--cheap" data-place='D2' data-price='10'>D2</span>
                                <span class="sits__place sits-price--cheap" data-place='D3' data-price='10'>D3</span>
                                <span class="sits__place sits-price--cheap" data-place='D4' data-price='10'>D4</span>
                                <span class="sits__place sits-price--cheap" data-place='D5' data-price='10'>D5</span>
                                <span class="sits__place sits-price--cheap" data-place='D6' data-price='10'>D6</span>
                                <span class="sits__place sits-price--cheap" data-place='D7' data-price='10'>D7</span>
                                <span class="sits__place sits-price--cheap" data-place='D8' data-price='10'>D8</span>
                                <span class="sits__place sits-price--cheap" data-place='D9' data-price='10'>D9</span>
                                <span class="sits__place sits-price--cheap" data-place='D10' data-price='10'>D10</span>
                                <span class="sits__place sits-price--cheap" data-place='D11' data-price='10'>D11</span>
                                <span class="sits__place sits-price--cheap" data-place='D12' data-price='10'>D12</span>
                                <span class="sits__place sits-price--cheap" data-place='D13' data-price='10'>D13</span>
                                <span class="sits__place sits-price--cheap" data-place='D14' data-price='10'>D14</span>
                                <span class="sits__place sits-price--cheap" data-place='D15' data-price='10'>D15</span>
                                <span class="sits__place sits-price--cheap" data-place='D16' data-price='10'>D16</span>
                                <span class="sits__place sits-price--cheap" data-place='D17' data-price='10'>D17</span>
                                <span class="sits__place sits-price--cheap" data-place='D18' data-price='10'>D18</span>
                            </div>

                            <div class="sits__row">
                                <span class="sits__place sits-price--middle" data-place='E1' data-price='20'>E1</span>
                                <span class="sits__place sits-price--middle" data-place='E2' data-price='20'>E2</span>
                                <span class="sits__place sits-price--middle" data-place='E3' data-price='20'>E3</span>
                                <span class="sits__place sits-price--middle" data-place='E4' data-price='20'>E4</span>
                                <span class="sits__place sits-price--middle" data-place='E5' data-price='20'>E5</span>
                                <span class="sits__place sits-price--middle" data-place='E6' data-price='20'>E6</span>
                                <span class="sits__place sits-price--middle" data-place='E7' data-price='20'>E7</span>
                                <span class="sits__place sits-price--middle" data-place='E8' data-price='20'>E8</span>
                                <span class="sits__place sits-price--middle" data-place='E9' data-price='20'>E9</span>
                                <span class="sits__place sits-price--middle" data-place='E10' data-price='20'>E10</span>
                                <span class="sits__place sits-price--middle" data-place='E11' data-price='20'>E11</span>
                                <span class="sits__place sits-price--middle" data-place='E12' data-price='20'>E12</span>
                                <span class="sits__place sits-price--middle" data-place='E13' data-price='20'>E13</span>
                                <span class="sits__place sits-price--middle" data-place='E14' data-price='20'>E14</span>
                                <span class="sits__place sits-price--middle" data-place='E15' data-price='20'>E15</span>
                                <span class="sits__place sits-price--middle" data-place='E16' data-price='20'>E16</span>
                                <span class="sits__place sits-price--middle" data-place='E17' data-price='20'>E17</span>
                                <span class="sits__place sits-price--middle" data-place='E18' data-price='20'>E18</span>
                            </div>

                            <div class="sits__row">
                                <span class="sits__place sits-price--middle" data-place='F1' data-price='20'>F1</span>
                                <span class="sits__place sits-price--middle" data-place='F2' data-price='20'>F2</span>
                                <span class="sits__place sits-price--middle" data-place='F3' data-price='20'>F3</span>
                                <span class="sits__place sits-price--middle" data-place='F4' data-price='20'>F4</span>
                                <span class="sits__place sits-price--middle" data-place='F5' data-price='20'>F5</span>
                                <span class="sits__place sits-price--middle" data-place='F6' data-price='20'>F6</span>
                                <span class="sits__place sits-price--middle" data-place='F7' data-price='20'>F7</span>
                                <span class="sits__place sits-price--middle" data-place='F8' data-price='20'>F8</span>
                                <span class="sits__place sits-price--middle" data-place='F9' data-price='20'>F9</span>
                                <span class="sits__place sits-price--middle" data-place='F10' data-price='20'>F10</span>
                                <span class="sits__place sits-price--middle" data-place='F11' data-price='20'>F11</span>
                                <span class="sits__place sits-price--middle" data-place='F12' data-price='20'>F12</span>
                                <span class="sits__place sits-price--middle" data-place='F13' data-price='20'>F13</span>
                                <span class="sits__place sits-price--middle" data-place='F14' data-price='20'>F14</span>
                                <span class="sits__place sits-price--middle" data-place='F15' data-price='20'>F15</span>
                                <span class="sits__place sits-price--middle" data-place='F16' data-price='20'>F16</span>
                                <span class="sits__place sits-price--middle" data-place='F17' data-price='20'>F17</span>
                                <span class="sits__place sits-price--middle" data-place='F18' data-price='20'>F18</span>
                            </div>

                            <div class="sits__row">
                                <span class="sits__place sits-price--middle" data-place='G1' data-price='20'>G1</span>
                                <span class="sits__place sits-price--middle" data-place='G2' data-price='20'>G2</span>
                                <span class="sits__place sits-price--middle" data-place='G3' data-price='20'>G3</span>
                                <span class="sits__place sits-price--middle" data-place='G4' data-price='20'>G4</span>
                                <span class="sits__place sits-price--middle" data-place='G5' data-price='20'>G5</span>
                                <span class="sits__place sits-price--middle" data-place='G6' data-price='20'>G6</span>
                                <span class="sits__place sits-price--middle" data-place='G7' data-price='20'>G7</span>
                                <span class="sits__place sits-price--middle" data-place='G8' data-price='20'>G8</span>
                                <span class="sits__place sits-price--middle" data-place='G9' data-price='20'>G9</span>
                                <span class="sits__place sits-price--middle" data-place='G10' data-price='20'>G10</span>
                                <span class="sits__place sits-price--middle" data-place='G11' data-price='20'>G11</span>
                                <span class="sits__place sits-price--middle" data-place='G12' data-price='20'>G12</span>
                                <span class="sits__place sits-price--middle" data-place='G13' data-price='20'>G13</span>
                                <span class="sits__place sits-price--middle" data-place='G14' data-price='20'>G14</span>
                                <span class="sits__place sits-price--middle" data-place='G15' data-price='20'>G15</span>
                                <span class="sits__place sits-price--middle" data-place='G16' data-price='20'>G16</span>
                                <span class="sits__place sits-price--middle" data-place='G17' data-price='20'>G17</span>
                                <span class="sits__place sits-price--middle" data-place='G18' data-price='20'>G18</span>
                            </div>

                            <div class="sits__row">
                                <span class="sits__place sits-price--middle" data-place='I3' data-price='20'>I3</span>
                                <span class="sits__place sits-price--middle" data-place='I4' data-price='20'>I4</span>
                                <span class="sits__place sits-price--middle" data-place='I5' data-price='20'>I5</span>
                                <span class="sits__place sits-price--middle" data-place='I6' data-price='20'>I6</span>
                                <span class="sits__place sits-price--middle" data-place='I7' data-price='20'>I7</span>
                                <span class="sits__place sits-price--middle" data-place='I8' data-price='20'>I8</span>
                                <span class="sits__place sits-price--middle" data-place='I9' data-price='20'>I9</span>
                                <span class="sits__place sits-price--middle" data-place='I10' data-price='20'>I10</span>
                                <span class="sits__place sits-price--middle" data-place='I11' data-price='20'>I11</span>
                                <span class="sits__place sits-price--middle" data-place='I12' data-price='20'>I12</span>
                                <span class="sits__place sits-price--middle" data-place='I13' data-price='20'>I13</span>
                                <span class="sits__place sits-price--middle" data-place='I14' data-price='20'>I14</span>
                                <span class="sits__place sits-price--middle" data-place='I15' data-price='20'>I15</span>
                                <span class="sits__place sits-price--middle" data-place='I16' data-price='20'>I16</span>
                            </div>

                            <div class="sits__row additional-margin">
                                <span class="sits__place sits-price--expensive" data-place='J5' data-price='30'>J5</span>
                                <span class="sits__place sits-price--expensive" data-place='J6' data-price='30'>J6</span>
                                <span class="sits__place sits-price--expensive" data-place='J7' data-price='30'>J7</span>
                                <span class="sits__place sits-price--expensive" data-place='J8' data-price='30'>J8</span>
                                <span class="sits__place sits-price--expensive" data-place='J9' data-price='30'>J9</span>
                                <span class="sits__place sits-price--expensive" data-place='J10' data-price='30'>J10</span>
                                <span class="sits__place sits-price--expensive" data-place='J11' data-price='30'>J11</span>
                                <span class="sits__place sits-price--expensive" data-place='J12' data-price='30'>J12</span>
                                <span class="sits__place sits-price--expensive" data-place='J13' data-price='30'>J13</span>
                                <span class="sits__place sits-price--expensive" data-place='J14' data-price='30'>J14</span>
                            </div>

                            <div class="sits__row">
                                <span class="sits__place sits-price--expensive" data-place='K5' data-price='30'>K5</span>
                                <span class="sits__place sits-price--expensive" data-place='K6' data-price='30'>K6</span>
                                <span class="sits__place sits-price--expensive" data-place='K7' data-price='30'>K7</span>
                                <span class="sits__place sits-price--expensive" data-place='K8' data-price='30'>K8</span>
                                <span class="sits__place sits-price--expensive" data-place='K9' data-price='30'>K9</span>
                                <span class="sits__place sits-price--expensive" data-place='K10' data-price='30'>K10</span>
                                <span class="sits__place sits-price--expensive" data-place='K11' data-price='30'>K11</span>
                                <span class="sits__place sits-price--expensive" data-place='K12' data-price='30'>K12</span>
                                <span class="sits__place sits-price--expensive" data-place='K13' data-price='30'>K13</span>
                                <span class="sits__place sits-price--expensive" data-place='K14' data-price='30'>K14</span>
                            </div>

                            <div class="sits__row">
                                <span class="sits__place sits-price--expensive" data-place='L6' data-price='30'>L6</span>
                                <span class="sits__place sits-price--expensive" data-place='L7' data-price='30'>L7</span>
                                <span class="sits__place sits-price--expensive" data-place='L8' data-price='30'>L8</span>
                                <span class="sits__place sits-price--expensive" data-place='L9' data-price='30'>L9</span>
                                <span class="sits__place sits-price--expensive" data-place='L10' data-price='30'>L10</span>
                                <span class="sits__place sits-price--expensive" data-place='L11' data-price='30'>L11</span>
                                <span class="sits__place sits-price--expensive" data-place='L12' data-price='30'>L12</span>
                                <span class="sits__place sits-price--expensive" data-place='L13' data-price='30'>L13</span>
                            </div>

                        <aside id="sits__checked22222" class="sits__checked">
                            <div class="checked-place">
                                
                            </div>
                            <div class="checked-result">
                                ¥0
                            </div>
                        </aside>
                        <footer class="sits__number">
                            <span class="sits__indecator">1</span>
                            <span class="sits__indecator">2</span>
                            <span class="sits__indecator">3</span>
                            <span class="sits__indecator">4</span>
                            <span class="sits__indecator">5</span>
                            <span class="sits__indecator">6</span>
                            <span class="sits__indecator">7</span>
                            <span class="sits__indecator">8</span>
                            <span class="sits__indecator">9</span>
                            <span class="sits__indecator">10</span>
                            <span class="sits__indecator">11</span>
                            <span class="sits__indecator">12</span>
                            <span class="sits__indecator">13</span>
                            <span class="sits__indecator">14</span>
                            <span class="sits__indecator">15</span>
                            <span class="sits__indecator">16</span>
                            <span class="sits__indecator">17</span>
                            <span class="sits__indecator">18</span>
                        </footer>
                    </div>
                </div>
            </div>
            
            <div class="col-sm-12 visible-xs"> 
                <div class="sits-area--mobile">
                    <div class="sits-area--mobile-wrap">
                        <div class="sits-select">
                            <select name="sorting_item" class="sits__sort sit-row" tabindex="0">
                                    <option value="1" selected='selected'>A</option>
                                    <option value="2">B</option>
                                    <option value="3">C</option>
                                    <option value="4">D</option>
                                    <option value="5">E</option>
                                    <option value="6">F</option>
                                    <option value="7">G</option>
                                    <option value="8">I</option>
                                    <option value="9">J</option>
                                    <option value="10">K</option>
                                    <option value="11">L</option>
                            </select>
 
                            <select name="sorting_item" class="sits__sort sit-number" tabindex="1">
                                    <option value="1" selected='selected'>1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                            </select>

                            <a href="#" class="btn btn-md btn--warning toogle-sits">Choose sit</a>
                        </div>
                    </div>

                    <a href="#" class="watchlist add-sits-line">Add new sit</a>

                    <aside class="sits__checked">
                            <div class="checked-place">
                                <span class="choosen-place"></span>
                            </div>
                            <div class="checked-result">
                                ¥0
                            </div>
                    </aside>

                    <img alt="" src="${base.contextPath}/static/images/components/sits_mobile.png">
                </div>
            </div>   
                
            </div>

            </div>
        </section>
        </div>
        
        

        <div class="clearfix"></div>
        <form id='film-and-time' class="booking-form" method='get' action='book3-buy.ftl'>

            <input type='text' name='choosen-number' class="choosen-number">
            <input type='text' name='choosen-number--cheap' class="choosen-number--cheap">
            <input type='text' name='choosen-number--middle' class="choosen-number--middle">
            <input type='text' name='choosen-number--expansive' class="choosen-number--expansive">
            <input type='text' name='choosen-cost' class="choosen-cost">
            <input type='text' name='choosen-sits' class="choosen-sits">


            <div class="booking-pagination booking-pagination--margin">
                    <a href="javascript:void(0)" onclick="history.go(-1)" class="booking-pagination__prev">
                        <span class="arrow__text arrow--prev">上一步</span>
                        <span class="arrow__info">选择影片，场次</span>
                    </a>
                    <a href="javascript:void(0)" onclick="book2Buy('${sid}')" class="booking-pagination__next">
                        <span class="arrow__text arrow--next">下一步</span>
                        <span class="arrow__info">确认订单，支付</span>
                    </a>
            </div>
        </form>
        
        <div class="clearfix"></div>

        <footer class="footer-wrapper">
            <section class="container">
                    <div class="footer-info">
                        <<div class="copy-bottom">
			        	<p class="copy"> 版权所有：爱电影文化传媒工作室  Done by KO Studio</p>
			            <p class="copy"> Copyright&copy; AMovie.com 2016. All rights reserved.</p>
			        </div>
            </section>
        </footer>
    </div>
	<!-- JavaScript-->
        <!-- jQuery 1.9.1--> 
        <script src="${base.contextPath}/static/js/external/jquery-1.10.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-1.10.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="${base.contextPath}/static/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3--> 
        <script src="${base.contextPath}/static/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="${base.contextPath}/static/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="${base.contextPath}/static/js/external/jquery.selectbox-0.2.min.js"></script>

        <!-- Form element -->
        <script src="${base.contextPath}/static/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="${base.contextPath}/static/js/form.js"></script>

        <!-- Custom -->
        <script src="${base.contextPath}/static/js/custom.js"></script>
		<input  type="hidden" id="allSeats" value="${strSeats}"></input> 
		
		<script type="text/javascript">
            $(document).ready(function() {
	        	var selectedSeats = $('#allSeats').val(); 
                init_BookingTwo();
                
                //把已被选的座位变为不可选
                var seatArray = selectedSeats.split(",");
                //alert(seatArray.length);
                
                //遍历座位数组
                $.each(seatArray,function(n,value) {  
		            //alert(n+' '+value);
	            	$('.sits__place').each(function(){
	            		if($(this).text()==value){
			            	$(this).addClass("sits-state--not")
	            		}
	            	})
	            });
            });
		</script>
		
</body>
</html>
