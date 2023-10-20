<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>
        @yield('title')
    </title>
    <style>
        @if($type==3||$type==4||$type==5||$type==6||$type==7)
        @page {
                margin-top: {{$reports_settings['margin-top']}}px;
                margin-right: {{$reports_settings['margin-right']}}px;
                margin-left: {{$reports_settings['margin-left']}}px;
                margin-bottom: {{$reports_settings['margin-bottom']}}px;
            }
        @else
            @page {
                header: page-header;
                footer: page-footer;

                margin-left: {{$reports_settings['margin-left']}}px;
                margin-right: {{$reports_settings['margin-right']}}px;

                margin-top: {{$reports_settings['content-margin-top']}}px;
                margin-header: {{$reports_settings['margin-top']}}px;

                margin-bottom: {{$reports_settings['content-margin-bottom']}}px;
                margin-footer: {{$reports_settings['margin-bottom']}}px;

                @if($group['branch']['show_watermark_image'])
                    background:url("{{url('uploads/branches/'.$group['branch']['watermark_image'])}}") no-repeat;
                    background-position: center;
                @endif
            }
        @endif

        .table-bordered {
            border: 1px solid #dee2e6;
            border-collapse: collapse;
            background-color: white!important;
        }

        .table-bordered,
        .table-bordered td {
            border: 1px solid #dee2e6;
        }

        .table-bordered thead th,
        .table-bordered thead td {
            border-bottom-width: 2px;
        }

        .table-bordered th,
        .table-bordered td {
            border: 1px solid #ddd !important;
        }
        table{
            width: 100%;
            border-collapse: collapse;
        }
        table td,th{
            padding: 5px;
        }
        .title{
            background-color: #ddd;
        }
        .branch_name{
            color:{{$reports_settings['branch_name']['color']}}!important;
            font-size:{{$reports_settings['branch_name']['font-size']}}!important;
            font-family:{{$reports_settings['branch_name']['font-family']}}!important;
        }
        .branch_info{
            color:{{$reports_settings['branch_info']['color']}}!important;
            font-size:{{$reports_settings['branch_info']['font-size']}}!important;
            font-family:{{$reports_settings['branch_info']['font-family']}}!important;
        }
        .title{
            color:{{$reports_settings['patient_title']['color']}}!important;
            font-size:{{$reports_settings['patient_title']['font-size']}}!important;
            font-family:{{$reports_settings['patient_title']['font-family']}}!important;
        }
        .data{
            color:{{$reports_settings['patient_data']['color']}}!important;
            font-size:{{$reports_settings['patient_data']['font-size']}}!important;
            font-family:{{$reports_settings['patient_data']['font-family']}}!important;
        }
        .header{
            border:{{$reports_settings['report_header']['border-width']}} solid {{$reports_settings['report_header']['border-color']}};
            background-color:{{$reports_settings['report_header']['background-color']}};
            text-align:{{$reports_settings['report_header']['text-align']}}!important;
        }
        .footer{
            border:{{$reports_settings['report_footer']['border-width']}} solid {{$reports_settings['report_footer']['border-color']}};
            background-color:{{$reports_settings['report_footer']['background-color']}};
            color:{{$reports_settings['report_footer']['color']}}!important;
            font-size:{{$reports_settings['report_footer']['font-size']}}!important;
            font-family:{{$reports_settings['report_footer']['font-family']}}!important;
            text-align:{{$reports_settings['report_footer']['text-align']}}!important;
        }
        .signature{
            color:{{$reports_settings['signature']['color']}}!important;
            font-size:{{$reports_settings['signature']['font-size']}}!important;
            font-family:{{$reports_settings['signature']['font-family']}}!important;
        }
        @if(session('rtl'))
            .pdf-header{
                direction:rtl;
            }
        @endif


.patient-card {
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    display: flex;
}

.patient-info {
    flex: 1;
}

.patient-medical {
    flex: 1;
    border-left: 1px solid #ccc;
    padding-left: 20px;
}

h2 {
    font-size: 1.2rem;
    margin-top: 0;
}

p {
    margin: 10px 0;
}

strong {
    font-weight: bold;
}

/* Responsive layout for smaller screens */
@media (max-width: 600px) {
    .patient-card {
        flex-direction: column;
    }

    .patient-medical {
        border-left: none;
        padding-left: 0;
        margin-top: 20px;
    }
}


    </style>

</head>

<body>

        <htmlpageheader name="page-header">
                   <table width="100%" id="headerlaporan" >
        
        <TR>
            <TD ROWSPAN="3" rowspan="3" WIDTH="80" ALIGN="CENTER" VALIGN="MIDDLE">
             
            </TD>
            
            <TD ALIGN=CENTER VALIGN=MIDDLE colspan=" 5" nowrap>
                <B><FONT FACE="Liberation Serif" SIZE=5 color="black">PEMERINTAH PROVINSI</FONT></B>
            </TD>
            <TD ROWSPAN="3" rowspan="3" WIDTH="80" ALIGN="CENTER" VALIGN="MIDDLE">
            </TD>
        </TR>
         <TR>
            <TD ALIGN=CENTER VALIGN=MIDDLE colspan=" 5" nowrap>
                <FONT ALIGN=CENTER VALIGN=MIDDLE FACE="Liberation Serif"  SIZE=2 color="black">info</FONT>
            </TD>
        </TR>
        <TR>
            <TD ALIGN=CENTER VALIGN=MIDDLE colspan=" 5" nowrap>
                <FONT ALIGN=CENTER VALIGN=MIDDLE FACE="Liberation Serif"  SIZE=2 color="black">info</FONT>
            </TD>
        </TR>
         <TR>
            <TD ALIGN=CENTER VALIGN=MIDDLE colspan=" 5" nowrap>
                <FONT ALIGN=CENTER VALIGN=MIDDLE FACE="Liberation Serif" color="black">Telp./Fax. (031) 5501046 / (031) 5501180 - </FONT>
            </TD>
        </TR>

        <TR>
            <TD ALIGN=CENTER VALIGN=MIDDLE colspan=" 5" nowrap>
                <FONT ALIGN=CENTER VALIGN=MIDDLE FACE="Liberation Serif" color="black">Telp./Fax. (031) 5501046 / (031) 5501180 - </FONT>
            </TD>
        </TR>
        
         <TR>
            <TD colspan="9" HEIGHT=6 style="border-bottom: 3px solid #000000" ></TD>
        </TR>
</table>
            @if(isset($group['patient']))
                <table width="100%" class="table table-bordered pdf-header">
                    <tbody>
                        <tr>
                            <td width="50%">
                                <span class="title">{{__('Barcode')}} :</span>
                                <span class="data">
                                    {{$group['barcode']}}
                                </span>
                            </td>
                            <td width="50%">
                                <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($group['barcode'], $barcode_settings['type'])}}" alt="barcode" class="margin" width="100"/><br>
                            </td>
                        </tr>
                        <tr>
                            <td width="50%">
                                <span class="title">{{__('Patient Code')}} :</span> <span
                                    class="data">
                                    @if(isset($group['patient']))
                                        {{ $group['patient']['code'] }}
                                    @endif
                                </span>

                            </td>
                            <td width="50%">
                                <span class="title">{{__('Patient Name')}} :</span> <span
                                    class="data">
                                    @if(isset($group['patient']))
                                        {{ $group['patient']['name'] }}
                                    @endif
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="title">{{__('Age')}} :</span>
                                <span class="data">
                                    @if(isset($group['patient']))
                                        {{$group['patient']['age']}}
                                    @endif
                                </span>

                            </td>
                            <td>
                                <span class="title">{{__('Gender')}} :</span> <span
                                    class="data">
                                    @if(isset($group['patient']))
                                        {{ __($group['patient']['gender']) }}
                                    @endif
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="title">{{__('Doctor')}} :</span> <span
                                    class="data">
                                    @if(isset($group['doctor']))
                                        {{ $group['doctor']['name'] }}
                                    @endif
                                </span>
                            </td>
                            <td>
                                <span class="title">{{__('Ruangan')}} :</span> <span
                                    class="data">
                                     @php
                   $grouptest = App\Models\GroupTest::where('group_id', $group['id'])->first();
            $ruangan = App\Models\RuanganM::find($grouptest->ruangan_id);
            // dd($ruangan);
       @endphp

                                    @if(isset($ruangan))
                                        {{ $ruangan->nama_ruangan }}
                                    @endif
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="title">{{__('Registration Date')}} :</span>
                                <span class="data">
                                    {{ date('Y-m-d H:i',strtotime($group['created_at'])) }}
                                </span>
                            </td>
                            <td>
                                <span class="title">{{__('Sample collection')}} :</span>
                                <span class="data">
                                    {{ $group['sample_collection_date'] }}
                                </span>
                            </td>
                        </tr>

                    </tbody>
                </table>
            @endif

        </htmlpageheader>

    @yield('content')

    <htmlpagefooter name="page-footer" class="page-footer">
        @if($type==1)
            @if($reports_settings['show_signature']||$reports_settings['show_qrcode'])
            <table>
                <tbody>
                    <tr>
                        <td width="20%" align="center">
                            @if($reports_settings['show_qrcode'])
                                <p class="signature">
                                    {{__('QR Code')}}
                                </p>
                            @endif
                        </td>
                        <td width="60%"></td>
                        <td width="20%" align="center">
                            @if($reports_settings['show_signature'])
                                <p class="signature">
                                    {{__('Signature')}}
                                </p>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td width="20%" align="center">
                            @if($reports_settings['show_qrcode'])
                                @if(isset($group['patient']))
                                    <img src="https://chart.googleapis.com/chart?chs={{$reports_settings['qrcode-dimension']}}x{{$reports_settings['qrcode-dimension']}}&cht=qr&chl={{url('patient/login/'.$group['patient']['code'])}}&choe=UTF-8" title="Link to Google.com" />
                                @endif
                            @endif
                        </td>
                        <td width="60%"></td>
                        <td width="20%" align="center">
                            @if($reports_settings['show_signature'])
                                @if(!empty($group['signed_by']))
                                    <p>
                                        <img src="{{url('uploads/signature/'.$group['signed_by_user']['signature'])}}" alt="" height="100">
                                    </p>
                                @endif
                            @endif
                        </td>
                    </tr>
                </tbody>
            </table>
            @endif
        @endif
        @if($reports_settings['show_footer'])
            @if($type==1||$type==2)
                @if($group['branch']['show_footer_image'])
                    <img src="{{url('uploads/branches/'.$group['branch']['footer_image'])}}" alt="" max-height="200">
                @else
                    <table width="100%">
                        <tbody>
                            <tr>
                                <td class="footer">
                                    {!! str_replace(["\r\n", "\n\r", "\r", "\n"], "<br>", $group['branch']['report_footer'])!!}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                @endif
            @endif
        @endif
    </htmlpagefooter>

</body>

</html>
