<%@ page pageEncoding="utf-8"%>
<%@ include file="../inc/header2.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ì¤êµ¬ ë¬¸íì¬ course</title>
    
</head>
<body>

<div id="map" style="width:100%;height:700px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=16fa6962d25a035624e2ea5cc720f790
&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // ì§ëë¥¼ íìí  div 
    mapOption = {
        center: new kakao.maps.LatLng(37.56294605259029, 126.98689955289), // ì§ëì ì¤ì¬ì¢í
        level: 5 // ì§ëì íë ë ë²¨
    };

// ì§ëë¥¼ ìì±í©ëë¤    
var map = new kakao.maps.Map(mapContainer, mapOption); 


// ì ì êµ¬ì±íë ì¢í ë°°ì´ìëë¤. ì´ ì¢íë¤ì ì´ì´ì ì ì íìí©ëë¤
var linePath = [
    new kakao.maps.LatLng(37.5679916808134, 126.97135653141187),//ìì¸ êµ¬ ë¬ììê³µì¬ê´
	new kakao.maps.LatLng(37.56791933984888, 126.97389593880756),//êµ¬ì¸êµ°ì¤ìíê´
	new kakao.maps.LatLng(37.56745082455315, 126.97660647255451),//ìì¸ êµ¬ êµ­íìì¬ë¹
	new kakao.maps.LatLng(37.56659176301622, 126.97823611737417),//êµ¬ ìì¸í¹ë³ìì²­ì¬
	new kakao.maps.LatLng(37.567128176061686, 126.97589400449974),//ê²½ì´ê¶ ìì´ì¬
	new kakao.maps.LatLng(37.56591725312202, 126.97499180443496),//ëìê¶
	new kakao.maps.LatLng(37.56429477139233, 126.97443698109024),//ìì¸ êµ¬ ëë²ì ì²­ì¬
	new kakao.maps.LatLng(37.56363747364791, 126.9721823964344),//ë°°ì íë¹ëê´
	new kakao.maps.LatLng(37.565399857303454, 126.97253291303231),//ìì¸ ì ëêµí
	new kakao.maps.LatLng(37.56560147358384, 126.97154742932746),//ìì¸ ì´íì¬ìê³ ë±íêµ ì¬ì¨ê¸°ëê´
	new kakao.maps.LatLng(37.5661839495406, 126.97213714677659),//ìì¸ êµ¬ ì ìì¼ë³´ ë³ê´
	new kakao.maps.LatLng(37.56700352923604, 126.9727195933903),//ë¯¸êµ­ê³µì¬ê´
	new kakao.maps.LatLng(37.5679916808134, 126.97135653141187)//ìì¸ êµ¬ ë¬ìì ê³µì¬ê´
]

// ì§ëì íìí  ì ì ìì±í©ëë¤
var polyline = new kakao.maps.Polyline({
    path: linePath, // ì ì êµ¬ì±íë ì¢íë°°ì´ ìëë¤
    strokeWeight: 8, // ì ì ëê» ìëë¤
    strokeColor: '#9b111e', // ì ì ìê¹ìëë¤
    strokeOpacity: 0.7, // ì ì ë¶í¬ëªë ìëë¤ 1ìì 0 ì¬ì´ì ê°ì´ë©° 0ì ê°ê¹ì¸ìë¡ í¬ëªí©ëë¤
    strokeStyle: 'solid' // ì ì ì¤íì¼ìëë¤
});

// ì§ëì ì ì íìí©ëë¤ 
polyline.setMap(map);

// ì ì êµ¬ì±íë ì¢í ë°°ì´ìëë¤. ì´ ì¢íë¤ì ì´ì´ì ì ì íìí©ëë¤
var linePath = [
    new kakao.maps.LatLng(37.559067729655915, 126.96721384550895),//ìì¸ ì½íì±ë¹
	new kakao.maps.LatLng(37.55556524118467, 126.964581884203),//ìê¸°ì ìê³ê´ê¸°ëì
	new kakao.maps.LatLng(37.55296597490634, 126.96363809650312),//ë§ë¦¬ëì ìêµ­ê°
	new kakao.maps.LatLng(37.55604072716004, 126.97153820612927),//êµ¬ ìì¸ì­ì¬
	new kakao.maps.LatLng(37.559951679391155, 126.97530687989759),//ìì¸ ì­ë¡ë¬¸(ë¨ëë¬¸)
	new kakao.maps.LatLng(37.56209943722394, 126.97992693757658),//ìì¸ íêµ­ìí ë³¸ê´
	new kakao.maps.LatLng(37.56511183621674, 126.9790170976896),//ìêµ¬ë¨ ì ë¬¸
	new kakao.maps.LatLng(37.56501359073356, 126.97973121302836),//íêµ¬ë¨
	new kakao.maps.LatLng(37.56632489025153, 126.98039545474315)//ìì¸ êµ¬ ë¯¸êµ­ë¬¸íì
]

// ì§ëì íìí  ì ì ìì±í©ëë¤
var polyline = new kakao.maps.Polyline({
    path: linePath, // ì ì êµ¬ì±íë ì¢íë°°ì´ ìëë¤
    strokeWeight: 8, // ì ì ëê» ìëë¤
    strokeColor: '#999999', // ì ì ìê¹ìëë¤
    strokeOpacity: 0.7, // ì ì ë¶í¬ëªë ìëë¤ 1ìì 0 ì¬ì´ì ê°ì´ë©° 0ì ê°ê¹ì¸ìë¡ í¬ëªí©ëë¤
    strokeStyle: 'solid' // ì ì ì¤íì¼ìëë¤
});

polyline.setMap(map);

var linePath = [
	new kakao.maps.LatLng(37.56770211209875, 126.98322594739848),//ê´íµê´
	new kakao.maps.LatLng(37.56529473626543, 126.9828429185342),//ìì¸ ë¨ëë¬¸ë¡ íêµ­ì ë ¥ê³µì¬ ì¬ì¥
	new kakao.maps.LatLng(37.56294605259029, 126.98689955289),//ìì¸ ëªëì±ë¹
	new kakao.maps.LatLng(37.55848794582256, 126.99398686700145),//ì¼ì²­ëì¤ì¥ìê¹ì¶ìê°ì¥
	new kakao.maps.LatLng(37.553823086089686, 126.9903824262766),//ìë£¡ë¬
	new kakao.maps.LatLng(37.55186186166696, 126.98763168423882)//ëª©ë©±ì°ë´ìëí°
]

var polyline = new kakao.maps.Polyline({
    path: linePath, // ì ì êµ¬ì±íë ì¢íë°°ì´ ìëë¤
    strokeWeight: 8, // ì ì ëê» ìëë¤
    strokeColor: '#ff00ff', // ì ì ìê¹ìëë¤
    strokeOpacity: 0.7, // ì ì ë¶í¬ëªë ìëë¤ 1ìì 0 ì¬ì´ì ê°ì´ë©° 0ì ê°ê¹ì¸ìë¡ í¬ëªí©ëë¤
    strokeStyle: 'solid' // ì ì ì¤íì¼ìëë¤
});

polyline.setMap(map);

var linePath = [
    new kakao.maps.LatLng(37.56884563243592, 127.00180183878874),//ì±ì ë¬
	new kakao.maps.LatLng(37.5609070610864, 127.00310864431675),//ê´ì±ë¬
	new kakao.maps.LatLng(37.55818211632532, 127.00491062100738),//ìíêµ
	new kakao.maps.LatLng(37.55766589799398, 127.00407286299041)//ì¥ì¶©ë¨ë¹
]

var polyline = new kakao.maps.Polyline({
    path: linePath, // ì ì êµ¬ì±íë ì¢íë°°ì´ ìëë¤
    strokeWeight: 8, // ì ì ëê» ìëë¤
    strokeColor: '#00aaff', // ì ì ìê¹ìëë¤
    strokeOpacity: 0.7, // ì ì ë¶í¬ëªë ìëë¤ 1ìì 0 ì¬ì´ì ê°ì´ë©° 0ì ê°ê¹ì¸ìë¡ í¬ëªí©ëë¤
    strokeStyle: 'solid' // ì ì ì¤íì¼ìëë¤
});

polyline.setMap(map);




var positions1 = [
    {
        address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë 5-1',
        text: 'ëìê¶'
    },
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë 15-1',
		text:'êµ¬ ë¬ììê³µì¬ê´'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë 34-3',
		text:'ìì¸ ì ëêµí'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë 10-1',
		text:'ë¯¸êµ­ê³µì¬ê´'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë 34-5',
		text:'ë°°ì¬íë¹ëê´'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë 1-23',
		text:'êµ¬ì¸êµ°ì¤ìíê´'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë 32-1',
		text:'ìì¸ ì´íì¬ìê³ ë±íêµ ì¬ì¨ê¸°ëê´'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ííë¡1ê° 60-1',
		text:'êµ¬ êµ­íìì¬ë¹'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ííë¡1ê° 31',
		text:'êµ¬ ìì¸í¹ë³ìì²­ì¬'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ììë¬¸ë 37',
		text:'êµ¬ ëë²ì ì²­ì¬'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë3',
		text:'ê²½ì´ê¶ ìì´ì¬'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì ë 1-28',
		text:'êµ¬ ì ìì¼ë³´ ë³ê´'
	}
];

var positions2 = [
    {
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì¤ë¦¼ë 149-2',
		text:'ìì¸ ì½íì±ë¹'
    },
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ë§ë¦¬ë2ê° 6-1',
		text:'ìê¸°ì ìê³ê´ê¸°ëì'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ë§ë¦¬ë2ê° 207',
		text:'ë§ë¦¬ëì ìêµ­ê°'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ë´ëë2ê° 122-28',
		text:'êµ¬ ìì¸ì­ì¬'
	},
	{
		address: 'ìì¸í¹ë³ì ì¤êµ¬ ë¨ëë¬¸ë¡4ê° 29',
        text: 'ì­ë¡ë¬¸(ë¨ëë¬¸)'
    },
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ë¨ëë¬¸ë¡3ê° 110',
		text:'íêµ­ìí ë³¸ê´'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ìê³µë 97-3ì¸ 2',
		text:'ìêµ¬ë¨ ì ë¬¸'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ìê³µë 87-14',
		text:'íêµ¬ë¨'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ìì§ë¡1ê° 63',
		text:'êµ¬ ë¯¸êµ­ë¬¸íì'
	}
];

var positions3 = [
    {
        address:'ìì¸í¹ë³ì ì¤êµ¬ ë¨ëë¬¸ë¡1ê° 19',
		text:'ê´íµê´'
    },
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ë¨ëë¬¸ë¡2ê° 5',
		text:'íêµ­ì ë ¥ê³µì¬ ì¬ì¥'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ëªë2ê° 1-1',
		text:'ìì¸ ëªëì±ë¹'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ íë2ê° 84-1',
		text:'ì¤ìì¥ê¹ì¶ìê°ì¥'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ìì¥ë ì°5-6',
		text:'ìë£¡ë¬'
	},
	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ìì¥ë 8-1',
		text:'ëª©ë©±ì°ë´ìëí°'
	}
];

var positions4 = [
   	{
		address:'ìì¸í¹ë³ì ì¤êµ¬ ë°©ì°ë 4-96',
		text:'ì±ì ë¬'
	},
    {
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì¥ì¶©ë2ê° 186-140',
		text:'ê´ì±ë¬'
	},
    {
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì¥ì¶©ë2ê° 197-1',
		text:'ìíêµ'
	},
    {
		address:'ìì¸í¹ë³ì ì¤êµ¬ ì¥ì¶©ë2ê° 197',
		text:'ì¥ì¶©ë¨ë¹'
	}
	

];

    
for(let i = 0; i < positions1.length; i++){
    // ì£¼ì-ì¢í ë³í ê°ì²´ë¥¼ ìì±í©ëë¤
    var geocoder = new kakao.maps.services.Geocoder();
    // ì£¼ìë¡ ì¢íë¥¼ ê²ìí©ëë¤
    geocoder.addressSearch(positions1[i].address, function(result, status) {

        // ì ìì ì¼ë¡ ê²ìì´ ìë£ëì¼ë©´ 
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¥¼ ë§ì»¤ë¡ íìí©ëë¤
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            //ì¸í¬ìëì°ë¡ ì¥ìì ëí ì¤ëªì íìí©ëë¤
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:140px;text-align:center;padding:3px 0;">'+positions1[i].text+'</div>'
            });
            // ë§ì»¤ì í´ë¦­ì´ë²¤í¸ë¥¼ ë±ë¡í©ëë¤
            kakao.maps.event.addListener(marker, 'click', function() {
      		// ë§ì»¤ ìì ì¸í¬ìëì°ë¥¼ íìí©ëë¤
      		infowindow.open(map, marker);  
			});

            // ì§ëì ì¤ì¬ì ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¡ ì´ëìíµëë¤
            //map.setCenter(coords);
        }
    });
}

for(let i = 0; i < positions2.length; i++){
    // ì£¼ì-ì¢í ë³í ê°ì²´ë¥¼ ìì±í©ëë¤
    var geocoder = new kakao.maps.services.Geocoder();
    // ì£¼ìë¡ ì¢íë¥¼ ê²ìí©ëë¤
    geocoder.addressSearch(positions2[i].address, function(result, status) {

        // ì ìì ì¼ë¡ ê²ìì´ ìë£ëì¼ë©´ 
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¥¼ ë§ì»¤ë¡ íìí©ëë¤
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            //ì¸í¬ìëì°ë¡ ì¥ìì ëí ì¤ëªì íìí©ëë¤
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:140px;text-align:center;padding:3px 0;">'+positions2[i].text+'</div>'
            });
            // ë§ì»¤ì í´ë¦­ì´ë²¤í¸ë¥¼ ë±ë¡í©ëë¤
            kakao.maps.event.addListener(marker, 'click', function() {
      		// ë§ì»¤ ìì ì¸í¬ìëì°ë¥¼ íìí©ëë¤
      		infowindow.open(map, marker);  
			});

            // ì§ëì ì¤ì¬ì ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¡ ì´ëìíµëë¤
            //map.setCenter(coords);
        }
    });
}

for(let i = 0; i < positions3.length; i++){
    // ì£¼ì-ì¢í ë³í ê°ì²´ë¥¼ ìì±í©ëë¤
    var geocoder = new kakao.maps.services.Geocoder();
    // ì£¼ìë¡ ì¢íë¥¼ ê²ìí©ëë¤
    geocoder.addressSearch(positions3[i].address, function(result, status) {

        // ì ìì ì¼ë¡ ê²ìì´ ìë£ëì¼ë©´ 
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¥¼ ë§ì»¤ë¡ íìí©ëë¤
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            //ì¸í¬ìëì°ë¡ ì¥ìì ëí ì¤ëªì íìí©ëë¤
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:140px;text-align:center;padding:3px 0;">'+positions3[i].text+'</div>'
            });
            // ë§ì»¤ì í´ë¦­ì´ë²¤í¸ë¥¼ ë±ë¡í©ëë¤
            kakao.maps.event.addListener(marker, 'click', function() {
      		// ë§ì»¤ ìì ì¸í¬ìëì°ë¥¼ íìí©ëë¤
      		infowindow.open(map, marker);  
			});

            // ì§ëì ì¤ì¬ì ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¡ ì´ëìíµëë¤
            //map.setCenter(coords);
        }
    });
}

for(let i = 0; i < positions4.length; i++){
    // ì£¼ì-ì¢í ë³í ê°ì²´ë¥¼ ìì±í©ëë¤
    var geocoder = new kakao.maps.services.Geocoder();
    // ì£¼ìë¡ ì¢íë¥¼ ê²ìí©ëë¤
    geocoder.addressSearch(positions4[i].address, function(result, status) {

        // ì ìì ì¼ë¡ ê²ìì´ ìë£ëì¼ë©´ 
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¥¼ ë§ì»¤ë¡ íìí©ëë¤
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            //ì¸í¬ìëì°ë¡ ì¥ìì ëí ì¤ëªì íìí©ëë¤
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:120px;text-align:center;padding:3px 0;">'+positions4[i].text+'</div>'
            });
            // ë§ì»¤ì í´ë¦­ì´ë²¤í¸ë¥¼ ë±ë¡í©ëë¤
            kakao.maps.event.addListener(marker, 'click', function() {
      		// ë§ì»¤ ìì ì¸í¬ìëì°ë¥¼ íìí©ëë¤
      		infowindow.open(map, marker);  
			});

            // ì§ëì ì¤ì¬ì ê²°ê³¼ê°ì¼ë¡ ë°ì ìì¹ë¡ ì´ëìíµëë¤
            //map.setCenter(coords);
        }
    });
}


</script>
</body>
</html>

<%@ include file="../inc/footer2.jsp"%>